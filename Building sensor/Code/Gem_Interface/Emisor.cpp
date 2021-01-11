#include "stdafx.h"
#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include "Emisor.h"
#include "commondefs.h"

char beep[] = { 7, '\0' };

/*===========================================*/
/* time converting from 0.1ms units since midnight to hhmmss.sss */
float ToHMS(const UINT32 mds)
{
	float sec;
	int itmp, hour, minute;

	sec = (float) mds * 0.0001f; //seconds
	itmp = (int) sec; //seconds
	minute = (int) (itmp / 60) % 60;    //minutes
	hour = itmp / 3600; //hours
	sec -= (float) (minute * 60 + hour * 3600);

	return (float) (hour * 10000 + minute * 100) + (float) sec;
}

static int HandleEmisMatchEvent(UINT16 targid, IPQDTD ipqdtd)
{
	printf("%c", beep[0]);
	printf("TARGET:%2u (sen=%2u, %3d%%, @%f)\n", targid, ipqdtd.sensor,
			(int) (100.5 - ipqdtd.misfits[0]), ToHMS(ipqdtd.mdtime));
	return 0;
}

/* display stderror msg*/
int Error(int code,const char* emsg)
{
	if(emsg!=NULL)
		fprintf(stderr,"%s\n", emsg);
	else fprintf(stderr,"ERROR\n");
	return code;
}

Emisor::Emisor(void)
{
	EMIS_Connect = NULL;
	EMIS_DisConnect = NULL;
	EMIS_LoadLibrary = NULL;
	EMIS_LogOn = NULL;
	EMIS_LogOff = NULL;
	EMIS_AddData = NULL;
	EMIS_SetPeakThrs = NULL;
	EMIS_SetClutterThr = NULL;
	EMIS_SetLibDataEx = NULL;
	EMIS_SetMatchEventCB = NULL;

	m_NSEN = 0;
	m_NFRQ = 0;
	m_mode = 0;
	m_FLTLEN = 51;
	m_clutterthreshold = 0;
	m_EdgthrCoeff = 1.5;
	m_peakthreshold = 1000.0f;
	hinstLib = 0;

}

Emisor::~Emisor(void)
{

}

int Emisor::DisConnect()
{
	if (EMIS_DisConnect != NULL)
		EMIS_DisConnect();

	EMIS_DisConnect = NULL;
	EMIS_Connect = NULL;
	EMIS_LoadLibrary = NULL;
	EMIS_LogOn = NULL;
	EMIS_LogOff = NULL;
	EMIS_AddData = NULL;
	EMIS_SetPeakThrs = NULL;
	EMIS_SetClutterThr = NULL;
	EMIS_SetLibDataEx = NULL;
	EMIS_SetMatchEventCB = NULL;

	m_mode = 0;
	m_FLTLEN = 51;
	m_clutterthreshold = 0;
	m_EdgthrCoeff = 1.5;
	m_peakthreshold = 500.0f;

        if (hinstLib != 0) {
		if (FreeLibrary(hinstLib) == 0)
			hinstLib = 0;
        }
	return 0;

}

int Emisor::Connect(int NSEN, int NFRQ)
{
	char libname[MAX_PATH];
	int error;
	char *emsg;

	if (hinstLib == 0)
	{

		/* try loading the library */
		strcpy(libname, "./libGEMIS.so");
                hinstLib = LoadLibrary(libname); 
		if (hinstLib==NULL)
		{
			return Error(1,libname);
		}

		if( (EMIS_Connect = (EMIS_CONNECT) GetProcAddress(hinstLib, "EMIS_Connect")) == 0)
			Error(2, "EMIS_Connect");
		if( (EMIS_DisConnect = (EMIS_DISCONNECT) GetProcAddress(hinstLib, "EMIS_DisConnect")) == 0)
			Error(2, "EMIS_DisConnect");
		if( (EMIS_LoadLibrary = (EMIS_LOADLIBRARY) GetProcAddress(hinstLib,"EMIS_LoadLibrary")) == 0)
			Error(2, "EMIS_LoadLibrary");
		if( (EMIS_SetLibDataEx = (EMIS_SETLIBDATAEX) GetProcAddress(hinstLib,"EMIS_SetLibDataEx")) == 0)
			Error(2, "EMIS_SetLibDataEx");
		if( (EMIS_SetMatchEventCB = (EMIS_SETEVENTCALLBACK) GetProcAddress(hinstLib,"EMIS_SetMatchEventCB")) == 0)
			Error(2, "EMIS_SetMatchEventCB");
		if( (EMIS_SetPeakThrs = (EMIS_SETPKTHRESHOLDS) GetProcAddress(hinstLib,"EMIS_SetPeakThrs")) == 0)
			Error(2, "EMIS_SetPeakThrs");
		if( (EMIS_SetClutterThr = (EMIS_SETCLUTTERTHRESHOLD) GetProcAddress(hinstLib,"EMIS_SetClutterThr")) == 0)
			Error(2, "EMIS_SetClutterThr");
		if( (EMIS_LogOn = (EMIS_LOGON) GetProcAddress(hinstLib, "EMIS_LogOn")) == 0)
			Error(2, "EMIS_LogOn");
		if( (EMIS_LogOff = (EMIS_LOGOFF) GetProcAddress(hinstLib, "EMIS_LogOff")) == 0)
			Error(2, "EMIS_LogOff");
		if( (EMIS_AddData = (EMIS_ADDDATA) GetProcAddress(hinstLib, "EMIS_AddData")) == 0)
			Error(2, "EMIS_AddData");

	}
	error = EMIS_Connect(NSEN, NFRQ, m_FLTLEN, m_FLTLEN);
	if (error)
		printf("Connected: %s\n", error ? "ERR" : "OK");

	if (error)
		return error;

	m_NSEN = NSEN;
	m_NFRQ = NFRQ;

	error = EMIS_SetMatchEventCB((void*) &HandleEmisMatchEvent);
	if (error)
		printf("ERROR in EMIS_SetQDTDmatchEventCB\n");

	return error;
}

int Emisor::SetMatchCallBackFn(MatchEMISEventCallback func)
{
	int error;
	if (EMIS_SetMatchEventCB == 0)
		return 1;
	error = EMIS_SetMatchEventCB((void*)func);
	if (error)
		printf("ERROR in EMIS_SetMatchEventCB\n");

	return error;

}

int Emisor::SetClutterThr(float cluthreshold)
{
	int error;
	if (EMIS_SetClutterThr == 0)
		return 1;
	error = EMIS_SetClutterThr(cluthreshold);
	if (error)
		return error;

	m_clutterthreshold = cluthreshold;

	return 0;
}


int Emisor::SetPeakThr(float peakthreshold, float edgecoeff)
{
	int error;
	if (EMIS_SetPeakThrs == 0)
		return 1;

	error = EMIS_SetPeakThrs(peakthreshold, peakthreshold * edgecoeff);
	if (error)
		return error;

	m_peakthreshold = peakthreshold;
	m_EdgthrCoeff = edgecoeff;

	return 0;
}

int Emisor::LoadSignatures(char* library, UINT16 mode, UINT16& libTargs,
		char* libNames)
{
	int error;

	if (EMIS_LoadLibrary == 0)
		return 1;
	error = EMIS_LoadLibrary(library, mode, libTargs, libNames);
	m_mode = mode;
	strcpy(m_signatures,library);
	return error;
}

int Emisor::AddData(int sens, int freqs, UINT32 mdtime, float* sig,
		float* qd, float* ip, int* PosXcm, int* PosYcm)
{
	if (EMIS_AddData == 0)
		return 1;
	return EMIS_AddData(sens, freqs, mdtime, sig, qd, ip, PosXcm, PosYcm);
}

int Emisor::LogOn(char *filename, char* infostr)
{
	if (EMIS_LogOn == 0)
		return 1;
	return EMIS_LogOn(filename, infostr);
}


int Emisor::LogOff()
{
	if (EMIS_LogOff == 0)
		return 1;
	return EMIS_LogOff();
}


