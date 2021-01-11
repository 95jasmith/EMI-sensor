// Test.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <windows.h> 
#include <conio.h>
#include <math.h>
#include "anyoption.h"
#include "time.h"

#include "commondefs.h"
#include "Gemmngr.h" 
//#include "SLog.h"
#include "FLog.h"
/*
// User includes
#include <iostream>
#include <string>
#include <stdlib.h>
#include "SerialPort.h"

*/
#define NEWLINE "\n"
#define SPACE ' '
#define OFF	0
#define ON	1
#define ERRGEM_OVERLOAD 1
#define ERRGEM_LOSTDATA 2
#define ERRGEM_TXLOW    4

#ifdef _DEBUG
#define  _CRTDBG_MAP_ALLOC
#include <stdlib.h>
#include <crtdbg.h>
#endif // _DEBUG

#pragma warning(disable : 4996)


/* utilities */
int FindName(char* name);
void ShowCtrlHelp();
void InitOpt(AnyOption& opt);
//SLOG slog("TEST");
FLOG slog("TestErrors.txt");

/* GEM related */
void TestCmds();
void showRxReqs();
Gemmngr gem;
unsigned short IDArray[MAX_NSENS], NFREQS = 10;

//convenience EM settings
const int SENSOR_ID = 1;
UINT16 gem_Rxsz = 0;
UINT32 gem_RxFr[MAX_FREQS] = { 0 };
INT32 gem_Fs = 0;
float gem_L = 0;
float gem_Rcoil = 0;
float gem_Rfet = 0;
float gem_Rbatt = 0;
float gem_V = 0;
float gem_Imax = 0;
float gem_G = 0;
float gem_PwLn = 0;
UINT16 gem_bp = 0;
UINT16 gem_aver = 0;
BYTE gem_IDType = 0;
BYTE gem_NFs = 0;

/*
//Serial Port Interface
char output[MAX_DATA_LENGTH];
char commport[] = "\\\\.\\COM13";
char* port = commport;
char incoming[MAX_DATA_LENGTH];
*/

////////////////////////////////////////////////////////////////////////
/* converts miledecisecond of the day to HHMMSS.SSSS */
static float ToHMS(const UINT32 mds)
{
	float sec;
	int itmp, hour, minute;

	sec = (float)mds * 0.0001f; //seconds
	itmp = (int)sec; //seconds
	minute = (int)(itmp / 60) % 60;    //minutes
	hour = itmp / 3600; //hours
	sec -= (float)(minute * 60 + hour * 3600);

	return (float)(hour * 10000 + minute * 100) + sec;
}

//command line
void InitOpt(AnyOption& opt)
{
	/* 3. SET THE USAGE/HELP   */
	opt.addUsage("");
	opt.addUsage("Usage: ");
	opt.addUsage("");
	opt.addUsage(" -h  --help  			Prints this help ");
	opt.addUsage(" -c  --com 1 			Port Serial ");
	opt.addUsage(" -b  --baud 115200    Baud Rate");
	opt.addUsage("");

	/* options read from commandline only */
	opt.setFlag("help", 'h'); /* a flag (takes no argument), supporting long and short form */
	opt.setOption("com", 'c'); //com port
	opt.setOption("baud", 'b'); //baud

	opt.processCommandArgs();

	if (opt.getFlag("help") || opt.getFlag('h'))
		opt.printUsage();
}

/* filename generations */
int FindName(char* name)
{
	int count, countmax(0);
	HANDLE hFindFile;
	WIN32_FIND_DATA	fileData;
	char str[MAX_PATH];
	strcpy_s(str, MAX_PATH, name);
	strcat(str, "*");
	/* working towards generating unique/sequential filename */
	/* get count index for file naming convention */
	countmax = count = 0;
	/* first time logging */

	/* search for data file */
	hFindFile = ::FindFirstFile(str, &fileData);

	if (hFindFile != INVALID_HANDLE_VALUE)
	{
		/* found file */
		while (1)
		{
			/* find more data files */
			if (::FindNextFile(hFindFile, &fileData) == FALSE)
			{
				/* no more files */
				/* update count extracted from file */
				sprintf(str, "%s%%u", name);
				sscanf(fileData.cFileName, str, &count);
				count++;
				if (count > countmax) countmax = count;
				break;
			}
			else {
				sprintf(str, "%s%%u", name);
				sscanf(fileData.cFileName, str, &count);
				count++;
				if (count > countmax) countmax = count;
			}
		}
	}

	/* create new file name */
	if (countmax)
		sprintf(str, "%u", countmax);
	else
		str[0] = 0;
	strcat(name, str);
	return 0;
}

/* Read and display sensor Freqs */
void showRxReqs()
{
	int error;
	UINT16 bp, av, frsz;
	int i;
	UINT32 fr[MAX_FREQS];

	printf("\n");
	for (int s = 0; s < MAX_NSENS; s++)
	{
		if (IDArray[s])
		{
			printf("RxFr(%2u):", IDArray[s]);
			error = gem.GetRxFreqs(IDArray[s], bp, av, frsz, fr);
			NFREQS = frsz;

			if (error)
			{
				printf("ERROR(%u):", error);
			}
			else {
				if (frsz == 0)
					printf("NONE ");
				else if (frsz > MAX_FREQS)
					printf("BAD=%u ", frsz);
				else
				{
					gem_bp = bp;
					gem_aver = av;
					printf("av=%u bp=%uHz: ", av, bp);
					for (i = 0; i < frsz; i++)
						printf("%u, ", fr[i]);
				}
			}
			printf(NEWLINE);
		}
	}
}


int main(int argc, char* argv[])
{
	eGPSGGA gga;
	bool bEMRunning(false);
	bool frozen(false);

	UINT16 bsid(0), marker(0), line(1);

	//ms-Times
	UINT32 msdsp, msgps;

	//connection
	UINT32 COMport = 1;
	UINT32 COMbaud = 115200;

	//ctrl-logics
	bool tmSynced(false), bPoll4IpQdData(false), bPoll4GPSData(false);
	bool bInCtrlMode(false), prevInCtrlMode(false);
	bool bLogging(false);


	int error, counter(0);
	char KbChar(0);
	unsigned short wsens, maxsens;


	AnyOption opt;
	char beep[] = { 7, '\0' };

	maxsens = 1;
	wsens = 0;

	for (int i = 0; i < MAX_NSENS; i++)
		IDArray[i] = 0;

	/* load gem library */
	error = gem.Load();
	if (error) {
		slog.write("ERROR(%d) : Cannot load GEM.dll driver", error);
		return error;
	}

	/* set option preferences  */
	opt.useCommandArgs(argc, argv);
	InitOpt(opt);

	if (opt.getValue('c') != NULL || opt.getValue("com") != NULL)
	{
		/* COM port or device */
		if (opt.getValue('c'))
			error = sscanf(opt.getValue('c'), "%u", &COMport);
		else
			error = sscanf(opt.getValue("com"), "%u", &COMport);

	}
	if (opt.getValue('b') != NULL || opt.getValue("baud") != NULL)
	{
		/* baud */
		if (opt.getValue('b'))
			error = sscanf(opt.getValue('b'), "%u", &COMbaud);
		else
			error = sscanf(opt.getValue("baud"), "%u", &COMbaud);
	}

	if (!opt.hasOptions())
	{ /* print usage if no options */
		opt.printUsage();
		return 100;
	}

	error = gem.ConnectSer(COMport, COMbaud, maxsens, 0);

	if (error)
	{
		slog.write("ERROR(%d) : Error connecting", error);
		return error;
	}

	/************************************************************/
	/* NOW WE ARE COINNECTED TO GEM */
	/* stop all em sensors*/
	gem.RunEM(0, 0);

	/* find all available sensors */
	printf("Searching for available sensors...");
	wsens = maxsens;

	// CAN WE SEE THE GEM?
	error = gem.GetIDArray(IDArray, &wsens, 4000);
	if (maxsens == 0)
		maxsens = wsens;
	for (int i = wsens; i < MAX_NSENS; i++)
		IDArray[i] = 0;

	if (wsens) //YES WE CAN
	{
		for (int i = 0; i < wsens; i++)
			printf("ID=%u ", IDArray[i]);
		if (maxsens != wsens)
		{
			printf("Requested differs from accounted count of sensors\n");
		}
		gem.GetSystem(SENSOR_ID, gem_IDType, gem_NFs, gem_Fs, gem_L, gem_Rcoil, gem_Rfet, gem_Rbatt, gem_V, gem_Imax, gem_G, gem_PwLn);
		gem.GetRxFreqs(SENSOR_ID, gem_bp, gem_aver, NFREQS, gem_RxFr);
	}
	else {
		slog.write("ERROR : No sensors found!");
		return -1;
	}

	/* issue cmd to sync time if GPS comes available */
	gem.EnablePort(SENSOR_ID, 1, 1); //port1 (the GPS port) on
	gem.SyncTimes(SENSOR_ID); //Sync time with GPS UTC time as soon as GPS is available and provide needed data

	/* display freqs for the sensor */
	showRxReqs();

	/* display ctrl. options */
	ShowCtrlHelp();

	do {

		if (_kbhit()) {
			KbChar = _getch();
			switch (KbChar)
			{
			case 'H':
			case 'h':
				ShowCtrlHelp();
				break;
			case 'b':
			case 'B':
				//begin EM transmitting
				error = gem.SyncTimes(SENSOR_ID);
				printf("SyncTimes: %s   (rtn:%d)\n", error ? "ERR" : "OK", error);
				error = gem.RunEM(SENSOR_ID, 1);
				printf("BeginEM: %s   (rtn:%d)\n", error ? "ERR" : "OK", error);
				if (error == 0) bEMRunning = true;
				break;
			case 'f':
				showRxReqs();
				break;
			case 'l':
			case 'L':
				//logging emdata and GPS (by gem driver library)
				if (!bLogging)
				{
					char retname[MAX_PATH];
					strcpy_s(retname, MAX_PATH, "gemdata");
					marker = 0;
					line = 1;
					gem.SetLine(line);

					FindName(&retname[0]);
					error = gem.LogOn(retname, 1);
					if (!error)
					{
						printf("\nLOGON by GEM: %s ON\n", retname);
						printf("%c", beep[0]);
						bLogging = true;
					}
					else {
						printf("\nLOGON: ERROR(%d)\n", error);
					}
				}
				else
				{
					error = gem.LogOff();
					if (!error)
					{
						printf("%c", beep[0]);
					}
					printf("\r\t\t\tLOGOFF: %s\n", error ? "ERR" : "OK");
					bLogging = false;
				}
				break;
			case 'p': //Get/poll for EM data (independent of driver storing)
				bPoll4IpQdData = !bPoll4IpQdData;
				break;
			case 'P': //Get/poll GPS data (independent of driver logger)
				bPoll4GPSData = !bPoll4GPSData;
				break;
			case 'F':
				frozen = !frozen;
				if (!frozen)
					gem.SetLine(++line); // increment line count(and reset internal sample counter) inside driver logger
				gem.LogFreeze(frozen);
				printf("Freeze:%s Ln=%d Mrk=%d\n", frozen ? "ON" : "OFF", line, marker);
				break;
			case 'm':
				//marker (in logged file)
				gem.SetMarker(++marker); //set to incremented mark #
				printf("Mark:%2u\n", marker);
				break;
			case 'a':
				//line count inc. (in logged file)
				gem.SetLine(++line); //set to incremented line #/reset samplecounter if logging
				printf("Line:%2u\n", line);
				break;
			case 'e':
				//Enable/Disable GPS port inside GEM (GEM will not see GPS if disabled, even in GPS is coming)
				printf("DisableGPSPort(%2u):", 1);
				error = gem.EnablePort(SENSOR_ID, 1, OFF); //port1 off (GPS port inside GEM)
				if (error) printf("ERROR(%u)\n", error);
				else printf("OK\n");
				break;
			case 'E':
				printf("EnableGPSPort(%2u):", 1);
				error = gem.EnablePort(SENSOR_ID, 1, ON);  //port1 on (GPS port inside GEM)
				if (error) printf("ERROR(%u)\n", error);
				else printf("OK\n");
				break;
			case 'I': //status info
			case 'i':
			{//local
				SYS_STAT stat;
				UINT16 id, sz;
				error = gem.GetStatus(SENSOR_ID, &stat.ws, &id, &sz);
				if (error)
					printf("ERROR(%u)\n", error);
				else
					printf("STAT:%Xh tx=%s,gpspps=%s,id:%uof%u\n", stat.ws, stat.ss.sysActive ? "ON" : "OFF", stat.ss.ppsExt ? "PRESENT" : "NA", id, sz);
			}
			break;
			case 's':
				// stop EM transmitter
				bEMRunning = false;
				error = gem.RunEM(SENSOR_ID, OFF);
				if (error == 0) {
					bPoll4IpQdData = false;
					bPoll4GPSData = false;
				}
				printf("StopEM: %s   (%d)\n", error ? "ERR" : "OK", error);
				break;
			case 'G':
			case 'g':
				// get/ show latest GPGGA data 
				printf("GetGPSGGA(%2u):", 1);
				error = gem.GetGPSGGA(SENSOR_ID, &gga);
				if (error) printf("ERROR(%u)\n", error);
				else {
					printf("hms:%02u%02u%04.1f, lat:%02d%08.5f,%c,lon:%03d%08.5f,%c,q:%u\n", gga.m_UTC_Hour, gga.m_UTC_Minute, gga.m_UTC_Sec,
						abs(gga.m_LatDegree), gga.m_LatMinute, (gga.m_LatDegree >= 0) ? 'N' : 'S', abs(gga.m_LongDegree), gga.m_LongMinute, (gga.m_LongDegree) >= 0 ? 'E' : 'W', gga.m_Quality);
				}
				break;
			case 'S':
				//sync times now ( requires incoming GPGGA GPS data)
				printf("SyncTimes():");
				error = gem.SyncTimes(SENSOR_ID);
				if (error) printf("ERROR(%u)\n", error);
				else printf("OK\n");
				break;
			case 'C':
				printf("CaptureTS started...wait\n");
				error = gem.CaptureTS(SENSOR_ID);
				printf("CaptureTS: %s   (%d)\n", error ? "ERR" : "OK", error);
				break;
			case 'T':
				gem.GetMsTimes(1, &msdsp, &msgps);
				//printf("msTimes: dsp=%u, gps=%d\n", msdsp,msgps);
				printf("tTimes: dsp=%u, gps=%d\n", msdsp / 1000, msgps / 1000); //second of the day
				break;
			case 't':
				TestCmds();
				break;
			} //end switch
		} //kbhit

		/* this is polling the data for display - error=21 if no new data since last read (e.g. if too frequent polling)*/
		/* skips > 0: skipped data since last read (e.g. if slow polling)*/
		if (bPoll4IpQdData)
		{
			float ipd[MAX_FREQS], qd[MAX_FREQS], sig;
			UINT32 mdstime;
			UINT16 sizem, err, skips;
			for (int i = 0; i < MAX_NSENS; i++)
			{
				if (IDArray[i])
				{
					for (int sp = 0; sp < i; sp++) {
						printf("_");
						//printf("IQ%u:", IDArray[i]);
					}

					error = gem.GetIPQValues(IDArray[i], &sig, ipd, qd, &mdstime, &sizem, &err, &skips);

					if (error) {
						//error=21 means NO NEW DATA AVAILABLE SINCE LAST READ
						if (error != 21) printf("ERROR=%d\n", error);
					}
					else if (sizem == 0) {
						//something went wrong
						printf("SIZE=0!\n");
					}
					else {
						printf("@%u ms", mdstime / 10); //GEM time is in 100us resolution

						for (int f = 0; f < min((int)sizem, 3); f++) //show only up to first 3 freqs
						{
							printf("(% .2f,% .2f)", ipd[f], qd[f]);
						}
						printf(" Stat:%u%u%u:%d", err & ERRGEM_OVERLOAD, err & ERRGEM_LOSTDATA, err & ERRGEM_TXLOW, skips);
						printf(NEWLINE);
					}
				}
			}
		}
		if (bPoll4GPSData) {
			error = gem.GetGPSGGA(SENSOR_ID, &gga);
			if (!error) {
				printf("hms:%02u%02u%04.1f, lat:%02d%08.5f,%c,lon:%03d%08.5f,%c,q:%u\n", gga.m_UTC_Hour, gga.m_UTC_Minute, gga.m_UTC_Sec,
					abs(gga.m_LatDegree), gga.m_LatMinute, (gga.m_LatDegree >= 0) ? 'N' : 'S', abs(gga.m_LongDegree), gga.m_LongMinute, (gga.m_LongDegree) >= 0 ? 'E' : 'W', gga.m_Quality);
			}
		}

		counter++;
		Sleep(90); // Sleeping should be shorter then data rate generation (for aver=1 data every 33.3ms for aver=3: 100ms)
	} while ((KbChar != 'x') && (KbChar != 'X') && (KbChar != SPACE) && (KbChar != 'q') && (KbChar != 'Q'));

	printf("\nWait Disconnecting:");

	// Stop EM and GPS ? (if desired)
	gem.RunEM(SENSOR_ID, OFF);
	gem.EnablePort(1, 1, 0);

	error = gem.DisConnect();   //stop and close GEM
	printf("\nDisconnect from GEM: %s   (%d)\n", error ? "ERR" : "OK", error);

	return 0;
}

void TestCmds()
{
	int error;
	UINT16 bp, av, frsz;
	UINT32 fr[MAX_FREQS];
	short charge, voltage, current;
	BYTE gemtype, NFs;
	int Fs;
	float L, Rcoil, Rfet, Rbatt, V, Imax, G, PwLn;


	printf("\n");
	for (int s = 0; s < MAX_NSENS; s++)
	{
		if (IDArray[s])
		{
			printf("GetRxFreqs(%2u):", IDArray[s]);
			error = gem.GetRxFreqs(IDArray[s], bp, av, frsz, fr);
			if (error) printf("ERROR(%u)\n", error);
			else printf("OK\n");
			/////////////////////////////////////////////////
			printf("GetTxFreqs(%2u):", IDArray[s]);
			error = gem.GetTxFreqs(IDArray[s], bp, frsz, fr);
			if (error) printf("ERROR(%u)\n", error);
			else printf("OK\n");
			/////////////////////////////////////////////////
			//printf("SaveCfgIx(%2u):", IDArray[s]);
			//error = gem.SaveCfgIx(IDArray[s], 0);
			//if (error) printf("ERROR(%u)\n", error);
			//else printf("OK\n");
			/////////////////////////////////////////////////
			//printf("RecallCfgIx(%2u):", IDArray[s]);
			//error = gem.RecallCfgIx(IDArray[s], 0);
			//if (error) printf("ERROR(%u)\n", error);
			//else printf("OK\n");
			/////////////////////////////////////////////////
			printf("50/60Hz:ConvertToBP(%2u):", IDArray[s]);
			error = gem.ConvertToBP(IDArray[s], 60 / 2);
			if (error) printf("ERROR(%u)\n", error);
			else printf("OK\n");
			/////////////////////////////////////////////////
			printf("GetBatteryStatus(%2u):", IDArray[s]);
			error = gem.GetBatteryStatus(IDArray[s], &charge, &voltage, &current);
			if (error) printf("ERROR(%u)\n", error);
			else printf("Charge:%d Voltage:%dV Curr:%dA\n", charge, voltage, current);
			/////////////////////////////////////////////////
			printf("GetSystem(%2u):", IDArray[s]);
			error = gem.GetSystem(IDArray[s], gemtype, NFs, Fs, L, Rcoil, Rfet, Rbatt, V, Imax, G, PwLn);
			if (error) printf("ERROR(%u)\n", error);
			else printf("OK\n");
			/////////////////////////////////////////////////
			//printf("SetSystem(%2u):", IDArray[s]);
			//error = gem.SetSystem(IDArray[s], gemtype, NFs,Fs,L,Rcoil,Rfet,Rbatt, V, Imax, G, PwLn);
			//if (error) printf("ERROR(%u)\n", error);
			//else printf("OK\n");
			/////////////////////////////////////////////////
			printf("EnablePort(%2u):", IDArray[s]);
			error = gem.EnablePort(IDArray[s], 1, 1); //port1 on
			if (error) printf("ERROR(%u)\n", error);
			else printf("OK\n");
			/////////////////////////////////////////////////
			printf("EnablePort(%2u):", IDArray[s]);
			error = gem.EnablePort(IDArray[s], 1, 0); //port1 off
			if (error) printf("ERROR(%u)\n", error);
			else printf("OK\n");
			/////////////////////////////////////////////////
			//printf("EnablePort(%2u):", IDArray[s]);
			//error = gem.EnablePort(IDArray[s], 2, 1); //port1 on
			//if (error) printf("ERROR(%u)\n", error);
			//else printf("OK\n");
			/////////////////////////////////////////////////
			//printf("EnablePort(%2u):", IDArray[s]);
			//error = gem.EnablePort(IDArray[s], 2, 0); //port1 off
			//if (error) printf("ERROR(%u)\n", error);
			//else printf("OK\n");

		}
	}
}

void ShowCtrlHelp()
{
	printf("hH-help, qxX-exit\n");
	printf("b-BuiltBS, B-BeginEM, f-showFreqs, s-StopEM\n");
	printf("p-showIpQ(toggle), P-showSig(toggle)\n");
	printf("t-testcmds,T-times, S-sync, C-Capture E/e-Enable GPSport\n");
	printf("L-LogAll(toggle), F-logfreeze(toggle), m-mark, a-line \n");

	printf("-------------------------------------------------------------\n");
}

