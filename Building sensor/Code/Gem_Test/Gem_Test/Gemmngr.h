/*
 * Gemtrol.h
 *
 *  Created on: Dec 10, 2012
 *      Author: f
 */

#ifndef GEMMNGR_H_
#define GEMMNGR_H_

#include <windows.h>
#include <stdlib.h>
//#include "commondefs.h"

typedef struct {
    BYTE	m_error;
    BYTE	m_Quality;
    WORD	m_Satellites;

    WORD	m_UTC_Hour;
    WORD	m_UTC_Minute;
    short	m_LatDegree;
    short	m_LongDegree;

    float	m_UTC_Sec;
    float	m_HDP;
    float	m_AntHeight;
    float	m_GeoHeight;
    float	m_LatMinute;
    float	m_LongMinute;
    float	m_Age;
    WORD	m_SID;
} eGPSGGA;

typedef union SYS_STAT {

	UINT16 ws;
	struct SS {
		unsigned short : 4;	/* RESERVED */
		unsigned short sampleExt : 1;	/* sample clock present */
		unsigned short portrt2 : 1;	/* port 2 on/off */
		unsigned short portrt1 : 1;	/* port 1 on/off */
		unsigned short portcmd : 1;	/* port 0 on/off */
		unsigned short ppsExt : 1;	/* external pps clock present */
		unsigned short dataActive : 1;	/* data download active */
		unsigned short logActive : 1;	/* logging active */
		unsigned short gpsActive : 1;	/* gps Active */
		unsigned short sysActive : 1;	/* ip/qd measurement system active */
		unsigned short charging : 1;	/* battery charging */
		unsigned short chargerPresent : 1;	/* charger present */
		unsigned short batPresent : 1;	/* battery present */
	} ss;
	//struct SS {
	//	unsigned short batPresent : 1;	/* battery present */
	//	unsigned short chargerPresent : 1;	/* charger present */
	//	unsigned short charging : 1;	/* battery charging */
	//	unsigned short sysActive : 1;	/* ip/qd measurement system active */
	//	unsigned short gpsActive : 1;	/* gps Active */
	//	unsigned short logActive : 1;	/* logging active */
	//	unsigned short dataActive : 1;	/* data download active */
	//	unsigned short ppsExt : 1;	/* external pps clock present */

	//	unsigned short portcmd : 1;	/* port 0 on/off */
	//	unsigned short portrt1 : 1;	/* port 1 on/off */
	//	unsigned short portrt2 : 1;	/* port 2 on/off */
	//	unsigned short sampleExt : 1;	/* sample clock present */
	//	unsigned short : 4;	/* RESERVED */
	//} ss;
	//struct SS {
	//	unsigned short sampleExt : 1;	/* sample clock present */
	//	unsigned short ppsExt : 1;		/* external clock present - pps */
	//	unsigned short sysActive : 1;	/* ip/qd measurement system active */
	//	unsigned short gpsActive : 1;	/* gps Active */

	//	unsigned short portcmd : 1;	/* port 0 cmd on/off */
	//	unsigned short portrt1 : 1;	/* port 1 rt on/off */
	//	unsigned short portrt2 : 1;	/* port 2 rt on/off */
	//	unsigned short portDspRt : 1;	/* port dsprt on/off */

	//	unsigned short dwnlActive : 1;	/* data download active */
	//	unsigned short batPresent : 1;	/* battery present */
	//	unsigned short chargerPresent : 1;	/* charger present */
	//	unsigned short charging : 1;	/* battery charging */

	//	unsigned short logActive : 1;	/* logging active */
	//	unsigned short res : 3;	/* RESERVED */
	//} ss;
	//struct SS {
	//	unsigned short res : 3;	/* RESERVED */
	//	unsigned short logActive : 1;	/* logging active */

	//	unsigned short charging : 1;	/* battery charging */
	//	unsigned short chargerPresent : 1;	/* charger present */
	//	unsigned short batPresent : 1;	/* battery present */
	//	unsigned short dwnlActive : 1;	/* data download active */

	//	unsigned short portDspRt : 1;	/* port dsprt on/off */
	//	unsigned short portrt2 : 1;	/* port 2 rt on/off */
	//	unsigned short portrt1 : 1;	/* port 1 rt on/off */
	//	unsigned short portcmd : 1;	/* port 0 cmd on/off */

	//	unsigned short gpsActive : 1;	/* gps Active */
	//	unsigned short sysActive : 1;	/* ip/qd measurement system active */
	//	unsigned short ppsExt : 1;		/* external clock present - pps */
	//	unsigned short sampleExt : 1;	/* sample clock present */
	//} ss;
} SYS_STAT;


typedef int (*GEM_CONNECTUDP)(char*, UINT16*, char*, UINT16,
		UINT16,UINT16);
typedef int (*GEM_CONNECTSER)(char*, UINT32, UINT16, UINT16);
typedef int (*GEM_DISCONNECT)(void);
typedef int (*GEM_GETIDARRAY)(UINT16*, UINT16*, UINT32 );

//side
//typedef int (*GEM_KEEPALIVE)(void);
//missed
typedef int (*GEM_BUILDBS)(UINT16);
typedef int (*GEM_GETSIGVALUES)(float *, UINT32 *, UINT16 *, UINT16 *);
typedef int (*GEM_GETBUFFEDSIGVALUES)(float *, UINT32 *, UINT16 *, UINT16 *, UINT16 *);
typedef int (*GEM_SETUPMOTIONPAR)(UINT16);
typedef int (*GEM_SETMOTIONCOEFF)(float);
typedef int (*GEM_SENDSINGLETS)(UINT16);
typedef int (*GEM_CAPTURETS)(UINT16);
typedef int (*GEM_RESET)(UINT16);
typedef int (*GEM_GETSTATUS)(UINT16, UINT16*, UINT16*, UINT16*);
typedef int (*GEM_SHOWDBGINFO)(UINT16);

//common
typedef int (*GEM_GETBATTERYSTATUS)(UINT16 , short* , short* ,short*);
typedef int (*GEM_RUNEM)(UINT16, UINT16 );
typedef int (*GEM_CLOCKTICK)(UINT16, UINT16 );

typedef int (*GEM_GETRAWIPQVALUES)(UINT16, float *, float *,float *, float *, UINT32 *, UINT16 *, UINT16 *);
typedef int (*GEM_GETIPQVALUES)(UINT16, float*, float*, float*, UINT32*, UINT16*, UINT16*, UINT16*);
typedef int (*GEM_GETRADARVALUE)(UINT16, float *, UINT32 *);

typedef int (*GEM_GETRXFREQS)(UINT16 SID, UINT16 &bp, UINT16 &av, UINT16 &frsz, UINT32 *fr); // GEM_GetRxFreqs
typedef int (*GEM_SETRXTXFREQS)(UINT16 , UINT16 , UINT16 , UINT32 *);//GEM_SetRxTxFreqs
typedef int (*GEM_GETTXFREQS)(UINT16 SID, UINT16 &bp, UINT16 &frsz, UINT32 *fr);// GEM_GetTxFreqs
typedef int (*GEM_GETFILTERS)(UINT16, int *, int *);// GEM_GetFilters
typedef int (*GEM_SETFILTERS)(UINT16, int , int );// GEM_SetFilters
typedef int (*GEM_GETCMON)(UINT16, float *, int * );// GEM_GetCMON
typedef int (*GEM_SETCMON)(UINT16, float , int );// GEM_SetCMON
typedef int (*GEM_GETGAINS)(UINT16, int* , int* );// GEM_GetGains
typedef int (*GEM_SETGAINS)(UINT16, int , int );// GEM_SetGains
typedef int (*GEM_GETOPMODE)(UINT16, int* );// GEM_GetOpMode
typedef int (*GEM_SETOPMODE)(UINT16, int );// GEM_SetOpMode
typedef int (*GEM_GETHWADCMODE)(UINT16, UINT16*, UINT16*, UINT16* );// GEM_GetHWADCMode
typedef int (*GEM_SETHWADCMODE)(UINT16, UINT16 );// GEM_SetHWADCMode
typedef int (*GEM_GETTSMODE)(UINT16, UINT16*, UINT16*, UINT16* );// GEM_GetTSMode
typedef int (*GEM_SETTSMODE)(UINT16, UINT16 );// GEM_SetTSMode
typedef int (*GEM_RECALLCFGIX)(UINT16, UINT16 );// GEM_RecallCfgIx
typedef int (*GEM_SAVECFGIX)(UINT16, UINT16 );// GEM_SaveCfgIx
//typedef int (*GEM_SWITCHBS)(UINT16, UINT16*, UINT16*, UINT32* );// GEM_SwitchBS
typedef int (*GEM_CONVERTTOBP)(UINT16, UINT16);// GEM_ConvertToBP

typedef int (*GEM_GETOUTMULTMODE)(UINT16, UINT16* );
typedef int (*GEM_SETOUTMULTMODE)(UINT16, UINT16 );
typedef int (*GEM_GETCALCOIL)(UINT16, UINT16* );
typedef int (*GEM_SETCALCOIL)(UINT16, UINT16 );

typedef int (*GEM_GETDATAFORMAT)(UINT16, int* );// GEM_GetDataFormat
typedef int (*GEM_SETDATAFORMAT)(UINT16, int );// GEM_SetDataFormat
typedef int (*GEM_GETPORTBAUD)(UINT16, UINT16, UINT32*, UINT32 []);// GEM_GetPortBaud
typedef int (*GEM_SETPORTBAUD)(UINT16, UINT16, UINT32);// GEM_SetPortBaud
typedef int (*GEM_ENABLEPORT)(UINT16, UINT16, UINT16);// GEM_EnablePort
typedef int (*GEM_GETBP)(UINT16, UINT16*, UINT16*);// GEM_GetBP
typedef int (*GEM_SETBP)(UINT16, UINT16, UINT16);// GEM_SetBP
typedef int (*GEM_GETSYSTEM)(UINT16 SID, BYTE& gemtype, BYTE& NFs,int& Fs,float& L,float& Rcoil,float& Rfet,float& Rbatt, float& V, float& Imax, float& G, float& PwLn);// GEM_GetSystem
typedef int (*GEM_SETSYSTEM)(UINT16 SID, BYTE gemtype,BYTE NFs,int Fs,float L,float Rcoil,float Rfet,float Rbatt, float V, float Imax, float G, float PwLn);// GEM_SetSystem
typedef int (*GEM_SETIOPORT)(UINT16, UINT16);// GEM_SetIOPort
typedef int (*GEM_DBGCMD)(UINT16);// Degugging cmd only
typedef int (*GEM_LOGON)(char *,BYTE);
typedef int (*GEM_LOGOFF)(void);
typedef int (*GEM_SETMARKER)(UINT16);
typedef int (*GEM_SETLINE)(UINT16);
typedef int (*GEM_LOGFREEZE)(BYTE);

typedef int (*GEM_SAVE)(void);
typedef int (*GEM_GETCONFIG) (char*,BYTE);
typedef int (*GEM_SETCONFIG) (char*);

typedef int (*GEM_GETDSPTIME) (UINT16, UINT32*, UINT16*,UINT16*);
typedef int (*GEM_SETDSPTIME) (UINT16, UINT32);
typedef int (*GEM_GETMSTIMES)(UINT16,UINT32*,UINT32*);
typedef int (*GEM_SYNCTIMES)(UINT16);
typedef int (*GEM_GETGPSGGA)(UINT16, eGPSGGA *);


class Gemmngr
{
public:
	Gemmngr();
	int Load();

	virtual ~Gemmngr();
private:
	bool bLoaded;

protected:
	/************  GEMQUE SECTION ****************************/
	GEM_CONNECTSER GEM_ConnectSer;
	GEM_DISCONNECT GEM_DisConnect;
	GEM_GETIDARRAY GEM_GetIDArray;
	GEM_GETBATTERYSTATUS GEM_GetBatteryStatus;
	GEM_RUNEM GEM_RunEM;
	GEM_BUILDBS  GEM_BuildBS;
	GEM_GETRAWIPQVALUES GEM_GetRawIpQValues;
	GEM_GETIPQVALUES GEM_GetIPQValues;
	GEM_GETSIGVALUES GEM_GetSigValues;
	GEM_GETBUFFEDSIGVALUES GEM_GetSigBuffedValues;
	GEM_SETUPMOTIONPAR GEM_SetupMotionPar;
	GEM_SETMOTIONCOEFF GEM_SetMotionCoeff;
    GEM_RECALLCFGIX GEM_RecallCfgIx;
    GEM_SAVECFGIX GEM_SaveCfgIx;
    GEM_CONVERTTOBP GEM_ConvertToBP;

//    GEM_SWITCHBS GEM_SwitchBS;
//	GEM_GETRADARVALUE GEM_Geint Load()tRADARValue;
	GEM_GETRXFREQS GEM_GetRxFreqs;
	GEM_SETRXTXFREQS GEM_SetRxTxFreqs;
	GEM_SETRXTXFREQS GEM_SetTxFreqs;
	GEM_GETTXFREQS GEM_GetTxFreqs;
	GEM_GETFILTERS GEM_GetFilters;
	GEM_SETFILTERS GEM_SetFilters;
	GEM_GETCMON GEM_GetCMON;
	GEM_SETCMON GEM_SetCMON;
	GEM_GETGAINS GEM_GetGains;
	GEM_SETGAINS GEM_SetGains;
	GEM_GETOPMODE GEM_GetOpMode;
	GEM_SETOPMODE GEM_SetOpMode;
	GEM_GETHWADCMODE GEM_GetHWADCMode;
	GEM_SETHWADCMODE GEM_SetHWADCMode;
	GEM_GETTSMODE GEM_GetTSMode;
	GEM_SETTSMODE GEM_SetTSMode;
	GEM_GETOUTMULTMODE GEM_GetOutMultipleMode;
	GEM_SETOUTMULTMODE GEM_SetOutMultipleMode;
	GEM_GETCALCOIL GEM_GetCalCoil;
	GEM_SETCALCOIL GEM_SetCalCoil;
	GEM_SETDATAFORMAT GEM_SetDataFormat;
	GEM_GETDATAFORMAT GEM_GetDataFormat;
	GEM_GETPORTBAUD GEM_GetPortBaud;
	GEM_SETPORTBAUD GEM_SetPortBaud;
	GEM_ENABLEPORT GEM_EnablePort;
	GEM_GETBP GEM_GetBP;
	GEM_SETBP GEM_SetBP;
	GEM_GETSYSTEM GEM_GetSystem;
	GEM_SETSYSTEM GEM_SetSystem;
	GEM_SETIOPORT GEM_SetIOPort;
	GEM_DBGCMD GEM_DBGcmd;
	GEM_LOGON GEM_LogOn;
	GEM_LOGOFF GEM_LogOff;
	GEM_SETMARKER GEM_SetMarker;
	GEM_SETLINE GEM_SetLine;
	GEM_LOGFREEZE GEM_LogFreeze;
	GEM_GETDSPTIME      GEM_GetDSPTime;
	GEM_SETDSPTIME GEM_SetDSPTime;
	GEM_GETMSTIMES GEM_GetMsTimes;
    GEM_SYNCTIMES  GEM_SyncTimes;
	GEM_CAPTURETS GEM_CaptureTS;
	GEM_RESET GEM_Reset;
	GEM_GETSTATUS GEM_GetStatus;
    GEM_GETGPSGGA	GEM_GetGPSGGA;


public:
int ConnectUDP(char* localIP, UINT16 *localPort,
		char* remoteIP, UINT16 remotePort, UINT16 sensors, UINT16 ignoreid);
int ConnectSer(char* portdev, UINT32 baud, UINT16 sensors, UINT16 ignoreid);
int ConnectSer(UINT32 portdev, UINT32 baud, UINT16 sensors, UINT16 ignoreid);
int DisConnect(void);
int GetIDArray(UINT16 *idarr, UINT16* sz, UINT32 sectimeout);
int GetBatteryStatus(UINT16, short*, short*, short*);
int RunEM(UINT16 SID, UINT16 on);
int BuildBS(UINT16 SID);
int RecallCfgIx(UINT16 SID, UINT16 ix);
int SaveCfgIx(UINT16 SID, UINT16 ix);
int ConvertToBP(UINT16 SID, UINT16 bp);

//int SwitchBS(UINT16 SID, UINT16* set, UINT16* nf, UINT32* freqs);
//int ClockTick(UINT16 SID, UINT16 on);
int GetRawIpQValues(UINT16 id, float *ipRef, float *qRef,
		float *ipSig, float *qSig, UINT32 *mds, UINT16 *pairs, UINT16* status);
int GetIPQValues(UINT16 ID, float* sig, float *ipValues, float *qValues,
		UINT32 *mds, UINT16 *pairs, UINT16* status, UINT16 *skips);

int GetSigValues(float *DetSig, UINT32 *mds, UINT16 *pairs, UINT16* status);
int GetSigBuffedValues(float *DetSig, UINT32 *mds, UINT16 *nsamples, UINT16 *nsens, UINT16 *skips);
int SetupMotionPar(UINT16 skipmax);
int SetMotionCoeff(float rate);

int GetRxFreqs(UINT16 SID, UINT16 &bp,UINT16 &av, UINT16 &frsz, UINT32 *fr);

int GetTxFreqs(UINT16 SID, UINT16 &bp, UINT16 &szfr, UINT32 *fr);
//int GetRxFreqs(UINT16 SID, UINT16 *bp, UINT16 *wfrsz, UINT32 *wfr,UINT16 *cfrsz, UINT32 *cfr);
int SetRxTxFreqs(UINT16 SID, UINT16 bp, UINT16 szfr, UINT32 *fr);
int SetTxFreqs(UINT16 SID, UINT16 bp, UINT16 szfr, UINT32 *fr);
int GetFilters(UINT16 SID, int *dmnflt, int *dmdflt);
int SetFilters(UINT16 SID, int dmnflt, int dmdflt);
int GetCMON(UINT16 SID, float *coef, int *thr);
int SetCMON(UINT16 SID, float coef, int thr);
int GetGains(UINT16 SID, int* rx, int *bx);
int SetGains(UINT16 SID, int rx, int bx);
int GetOpMode(UINT16 SID, int* opmode);
int SetOpMode(UINT16 SID, int opmode);
int GetHWADCMode(UINT16 SID, UINT16* mode, UINT16* ids, UINT16* sz);
int SetHWADCMode(UINT16 SID, UINT16 mode);
int GetTSMode(UINT16 SID, UINT16* mode, UINT16* ids, UINT16* sz);
int SetTSMode(UINT16 SID, UINT16 mode);
int GetOutMultipleMode(UINT16 SID, UINT16* ommode);
int SetOutMultipleMode(UINT16 SID, UINT16 ommode);
int GetCalCoil(UINT16 SID, UINT16* mode);
int SetCalCoil(UINT16 SID, UINT16 mode);
int GetDataFormat(UINT16 SID, int* format);
int SetDataFormat(UINT16 SID, UINT16 format);
int GetPortBaud(UINT16 SID, UINT16 port, UINT32* baud, UINT32 availbauds[]);
int SetPortBaud(UINT16 SID, UINT16 port, UINT32 baud);
int EnablePort(UINT16 SID, UINT16 port, UINT16 on);
int GetBP(UINT16 SID, UINT16*bp, UINT16*bpa);
int SetBP(UINT16 SID, UINT16 bp, UINT16 bpa);
int GetSystem(UINT16 SID, BYTE& gemtype, BYTE& NFs,int& Fs,float& L,float& Rcoil,float& Rfet,float& Rbatt, float& V, float& Imax, float& G, float& PwLn);
int SetSystem(UINT16 SID, BYTE gemtype,BYTE NFs,int Fs,float L,float Rcoil,float Rfet,float Rbatt, float V, float Imax, float G, float PwLn);

int SetIOPort(UINT16 SID, UINT16 state);
//int DBGcmd(UINT16 sid);

int LogOn(char *surveyname, BYTE modetxt);
int LogOff(void);
int SetMarker(UINT16 val);
int SetLine(UINT16 val);
int LogFreeze(BYTE on);
int Save(void);

int SetDSPTime(UINT16 SID, UINT32 sec);
int CaptureTS(UINT16 SID);
int Reset(UINT16 SID);
int GetStatus(UINT16 SID, UINT16* status, UINT16* id, UINT16* sz);
int GetMsTimes(UINT16 SID, UINT32* msdsp, UINT32* msgps);
int SyncTimes(UINT16 SID);
int GetGPSGGA(UINT16 SID,eGPSGGA *gga);
int SHOWDBGInfo(UINT16 SID);

};

#endif /* GEMMNGR_H_ */
