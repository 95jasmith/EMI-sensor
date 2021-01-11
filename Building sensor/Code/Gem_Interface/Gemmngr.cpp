/*
 * Gemtrol.cpp
 *
 *  Created on: Dec 10, 2012
 *      Author: f
 */

#include "stdafx.h"
#include <stdlib.h>
#include <stdio.h>
#include "Gemmngr.h"
#include "defines.h"

#define DEBUGGING ( _DEBUG & FALSE)


/* display stderror msg*/
static int Error(int code, const char* emsg)
{
	if(emsg!=NULL)
		fprintf(stderr,"%s\n", emsg);
	else fprintf(stderr,"ERROR\n");
	return code;
}

Gemmngr::Gemmngr()
{
	bLoaded = false;
	GEM_ConnectSer = 0;
	GEM_DisConnect = 0;
	GEM_GetIDArray = 0;
	GEM_GetBatteryStatus = 0;
	GEM_RunEM = 0;
	GEM_BuildBS = 0;
	GEM_GetRawIpQValues = 0;
	GEM_GetIPQValues = 0;
	GEM_GetSigValues = 0;
	GEM_GetSigBuffedValues = 0;
	GEM_SetupMotionPar = 0;
	GEM_SetMotionCoeff = 0;
    GEM_RecallCfgIx = 0;
    GEM_SaveCfgIx = 0;
    //GEM_SwitchBS = 0;
    GEM_ConvertToBP = 0;

//	GEM_GetRADARValue = 0;
	GEM_GetRxFreqs = 0;
	GEM_SetRxTxFreqs = 0;
	GEM_SetTxFreqs = 0;
	GEM_GetTxFreqs = 0;
	GEM_GetFilters = 0;
	GEM_SetFilters = 0;
	GEM_GetCMON = 0;
	GEM_SetCMON = 0;
	GEM_GetGains = 0;
	GEM_SetGains = 0;
	GEM_GetOpMode = 0;
	GEM_SetOpMode = 0;
	GEM_GetHWADCMode = 0;
	GEM_SetHWADCMode = 0;
	GEM_GetTSMode = 0;
	GEM_SetTSMode = 0;
	GEM_GetOutMultipleMode = 0;
	GEM_SetOutMultipleMode = 0;
	GEM_GetCalCoil = 0;
	GEM_SetCalCoil = 0;
	GEM_SetDataFormat = 0;
	GEM_GetDataFormat = 0;
	GEM_GetPortBaud = 0;
	GEM_SetPortBaud = 0;
	GEM_EnablePort = 0;
	GEM_GetBP = 0;
	GEM_SetBP = 0;
	GEM_SetIOPort = 0;
	GEM_DBGcmd = 0;
	GEM_LogOn = 0;
	GEM_LogOff = 0;
	GEM_SetLine = 0;
	GEM_SetMarker = 0;
	GEM_LogFreeze = 0;
	GEM_GetMsTimes = 0;
	GEM_GetDSPTime = 0;
	GEM_SetDSPTime = 0;
    GEM_SyncTimes = 0;
    GEM_GetGPSGGA = 0;

	GEM_CaptureTS = 0;
	GEM_Reset = 0;
	GEM_GetStatus = 0;
}

Gemmngr::~Gemmngr()
{

}

int Gemmngr::Load()
{
	char libname[MAX_PATH];
        HINSTANCE hinstLib; 
	//char* emsg;

        strcpy_s(libname,MAX_PATH,"GEM.DLL");
        hinstLib = LoadLibrary(libname); 

        if(hinstLib==NULL)  { 
            perror("main: LoadLibrary(GEM.DLL)");
	    return 1;
        }

	/* find fn addresses */
    GEM_ConnectSer			= (GEM_CONNECTSER) GetProcAddress(hinstLib, "GEM_ConnectSer");
    GEM_DisConnect			= (GEM_DISCONNECT) GetProcAddress(hinstLib, "GEM_DisConnect");
    GEM_GetIDArray          = (GEM_GETIDARRAY) GetProcAddress(hinstLib, "GEM_GetIDArray");
    GEM_GetBatteryStatus    = (GEM_GETBATTERYSTATUS) GetProcAddress(hinstLib, "GEM_GetBatteryStatus");
    GEM_GetStatus			= (GEM_GETSTATUS) GetProcAddress(hinstLib, "GEM_GetStatus");
    GEM_GetSigBuffedValues	= (GEM_GETBUFFEDSIGVALUES) GetProcAddress(hinstLib, "GEM_GetSigBuffedValues");
    GEM_SetupMotionPar	    = (GEM_SETUPMOTIONPAR) GetProcAddress(hinstLib, "GEM_SetupMotionPar");
    GEM_SetMotionCoeff	    = (GEM_SETMOTIONCOEFF) GetProcAddress(hinstLib, "GEM_SetMotionCoeff");

    GEM_GetIPQValues	    = (GEM_GETIPQVALUES) GetProcAddress(hinstLib, "GEM_GetIPQValues");
    GEM_GetRawIpQValues	    = (GEM_GETRAWIPQVALUES) GetProcAddress(hinstLib, "GEM_GetRawIpQValues");
    GEM_RunEM				= (GEM_RUNEM) GetProcAddress(hinstLib, "GEM_RunEM");
    GEM_BuildBS				= (GEM_BUILDBS) GetProcAddress(hinstLib, "GEM_BuildBS");
    GEM_GetRxFreqs			= (GEM_GETRXFREQS) GetProcAddress(hinstLib, "GEM_GetRxFreqs");
    GEM_RecallCfgIx         = (GEM_RECALLCFGIX) GetProcAddress(hinstLib, "GEM_RecallCfgIx");
    GEM_SaveCfgIx           = (GEM_SAVECFGIX) GetProcAddress(hinstLib, "GEM_SaveCfgIx");
    GEM_ConvertToBP         = (GEM_CONVERTTOBP) GetProcAddress(hinstLib, "GEM_ConvertToBP");

    GEM_SetRxTxFreqs	= (GEM_SETRXTXFREQS) GetProcAddress(hinstLib, "GEM_SetRxTxFreqs");
    GEM_GetTxFreqs	= (GEM_GETTXFREQS) GetProcAddress(hinstLib, "GEM_GetTxFreqs");
    GEM_GetFilters	= (GEM_GETFILTERS) GetProcAddress(hinstLib, "GEM_GetFilters");
    GEM_SetFilters	= (GEM_SETFILTERS) GetProcAddress(hinstLib, "GEM_SetFilters");
    GEM_GetCMON		= (GEM_GETCMON) GetProcAddress(hinstLib, "GEM_GetCMON");
    GEM_SetCMON		= (GEM_SETCMON) GetProcAddress(hinstLib, "GEM_SetCMON");
    GEM_GetGains	= (GEM_GETGAINS) GetProcAddress(hinstLib, "GEM_GetGains");
    GEM_SetGains	= (GEM_SETGAINS) GetProcAddress(hinstLib, "GEM_SetGains");
    GEM_GetOpMode	= (GEM_GETOPMODE) GetProcAddress(hinstLib, "GEM_GetOpMode");
    GEM_SetOpMode	= (GEM_SETOPMODE) GetProcAddress(hinstLib, "GEM_SetOpMode");
    GEM_GetHWADCMode	= (GEM_GETHWADCMODE) GetProcAddress(hinstLib, "GEM_GetHWADCMode");
    GEM_SetHWADCMode	= (GEM_SETHWADCMODE) GetProcAddress(hinstLib, "GEM_SetHWADCMode");
    GEM_GetTSMode	= (GEM_GETTSMODE) GetProcAddress(hinstLib, "GEM_GetTSMode");
    GEM_SetTSMode	= (GEM_SETTSMODE) GetProcAddress(hinstLib, "GEM_SetTSMode");
    GEM_GetOutMultipleMode	= (GEM_GETOUTMULTMODE) GetProcAddress(hinstLib, "GEM_GetOutMultipleMode");
    GEM_SetOutMultipleMode	= (GEM_SETOUTMULTMODE) GetProcAddress(hinstLib, "GEM_SetOutMultipleMode");
    GEM_SetCalCoil	= (GEM_SETCALCOIL) GetProcAddress(hinstLib, "GEM_SetCalCoil");
    GEM_GetCalCoil	= (GEM_GETCALCOIL) GetProcAddress(hinstLib, "GEM_GetCalCoil");
    GEM_GetDataFormat	= (GEM_GETDATAFORMAT) GetProcAddress(hinstLib, "GEM_GetDataFormat");
    GEM_SetDataFormat	= (GEM_SETDATAFORMAT) GetProcAddress(hinstLib, "GEM_SetDataFormat");

    GEM_GetPortBaud	= (GEM_GETPORTBAUD) GetProcAddress(hinstLib, "GEM_GetPortBaud");
    GEM_SetPortBaud	= (GEM_SETPORTBAUD) GetProcAddress(hinstLib, "GEM_SetPortBaud");
    GEM_EnablePort	= (GEM_ENABLEPORT) GetProcAddress(hinstLib, "GEM_EnablePort");
    GEM_GetBP		= (GEM_GETBP) GetProcAddress(hinstLib, "GEM_GetBP");
    GEM_SetBP		= (GEM_SETBP) GetProcAddress(hinstLib, "GEM_SetBP");
    GEM_GetSystem		= (GEM_GETSYSTEM) GetProcAddress(hinstLib, "GEM_GetSystem");
    GEM_SetSystem		= (GEM_SETSYSTEM) GetProcAddress(hinstLib, "GEM_SetSystem");
    GEM_SetIOPort	= (GEM_SETIOPORT) GetProcAddress(hinstLib, "GEM_SetIOPort");
    GEM_DBGcmd	        = (GEM_DBGCMD) GetProcAddress(hinstLib, "GEM_DBGcmd"); //dbg only
    GEM_LogOn		    = (GEM_LOGON) GetProcAddress(hinstLib, "GEM_LogOn");
    GEM_LogOff		    = (GEM_LOGOFF) GetProcAddress(hinstLib, "GEM_LogOff");
	GEM_SetMarker = (GEM_SETMARKER)GetProcAddress(hinstLib, "GEM_SetMarker");
	GEM_LogFreeze = (GEM_LOGFREEZE)GetProcAddress(hinstLib, "GEM_LogFreeze");
	GEM_SetLine = (GEM_SETLINE)GetProcAddress(hinstLib, "GEM_SetLine");
	GEM_CaptureTS	    = (GEM_CAPTURETS) GetProcAddress(hinstLib, "GEM_CaptureTS");
    GEM_SyncTimes	= (GEM_SYNCTIMES) GetProcAddress(hinstLib, "GEM_SyncTimes");
    GEM_GetMsTimes	= (GEM_GETMSTIMES) GetProcAddress(hinstLib, "GEM_GetMsTimes");
    GEM_GetDSPTime	= (GEM_GETDSPTIME) GetProcAddress(hinstLib, "GEM_GetDSPTime");
    GEM_SetDSPTime	= (GEM_SETDSPTIME) GetProcAddress(hinstLib, "GEM_SetDSPTime");
    GEM_GetGPSGGA	= (GEM_GETGPSGGA) GetProcAddress(hinstLib, "GEM_GetGPSGGA");
    

    //GEM_SetConfig		    = (GEM_SETCONFIG) GetProcAddress(hinstLib, "GEM_SetConfig");
    //GEM_GetConfig		    = (GEM_GETCONFIG) GetProcAddress(hinstLib, "GEM_GetConfig");
    bLoaded = true;
    return ERROR_OK; //OK
}

int Gemmngr::ConnectSer(UINT32 port, UINT32 baud, UINT16 sensors, UINT16 ignoreid)
{
	if (GEM_ConnectSer == 0)
		return -1;
        char portdev[24];
        if(port>99) sprintf_s(portdev,24,"\\\\.\\COM%d",port);
		else 
			sprintf_s(portdev, 24, "COM%d", port);

	return GEM_ConnectSer(portdev, baud, sensors, ignoreid);
}

int Gemmngr::ConnectSer(char* portdev, UINT32 baud, UINT16 sensors, UINT16 ignoreid)
{
	if (GEM_ConnectSer == 0)
		return -1;
	return GEM_ConnectSer(portdev, baud, sensors, ignoreid);
}

int Gemmngr::DisConnect()
{
	if (GEM_DisConnect == 0)
		return -1;
	return GEM_DisConnect();
}

int Gemmngr::GetIDArray(UINT16 *idarr, UINT16* sz, UINT32 sectimeout)
{
	if (GEM_GetIDArray == 0)
		return -1;
	return GEM_GetIDArray(idarr, sz, sectimeout);
}

int Gemmngr::GetBatteryStatus(UINT16 sid, short* charge, short* voltage,short* current)
{
if(GEM_GetBatteryStatus==0) return -1;
return GEM_GetBatteryStatus(sid, charge, voltage,current);
}

int Gemmngr::RunEM(UINT16 SID, UINT16 on)
{
	if (GEM_RunEM == 0)
		return -1;
	return GEM_RunEM(SID, on);
}

int Gemmngr::BuildBS(UINT16 SID)
{
if (GEM_BuildBS == 0)
	return -1;
return GEM_BuildBS(SID);
}

int Gemmngr::RecallCfgIx(UINT16 SID, UINT16 ix)
{
if (GEM_RecallCfgIx == 0)
	return -1;
return GEM_RecallCfgIx(SID, ix);
}

int Gemmngr::SaveCfgIx(UINT16 SID, UINT16 ix)
{
if (GEM_SaveCfgIx == 0)
	return -1;
return GEM_SaveCfgIx(SID, ix);
}

int Gemmngr::ConvertToBP(UINT16 SID, UINT16 bp)
{
if (GEM_ConvertToBP == 0)
	return -1;
return GEM_ConvertToBP(SID, bp );
}

//int Gemmngr::SwitchBS(UINT16 SID, UINT16* set, UINT16* nf, UINT32* freqs)
//{
//if (GEM_SwitchBS == 0)
//	return -1;
//return GEM_SwitchBS(SID, set, nf, freqs);
//
//}


int Gemmngr::GetRawIpQValues(UINT16 id, float *ipRef, float *qRef, float *ipSig, float *qSig,
		UINT32 *mds, UINT16 *dsize, UINT16* status)
{
if (GEM_GetRawIpQValues == 0)
	return -1;
return GEM_GetRawIpQValues(id, ipRef, qRef, ipSig, qSig, mds, dsize, status);
}

int Gemmngr::GetIPQValues(UINT16 ID, float* sig, float *ipValues, float *qValues,
		UINT32 *mds, UINT16 *pairs, UINT16* status, UINT16 *skips)
{
if (GEM_GetIPQValues == 0)
	return -1;
return GEM_GetIPQValues(ID, sig, ipValues, qValues, mds, pairs, status, skips);
}

int Gemmngr::GetSigValues(float *DetSig, UINT32 *mds, UINT16 *pairs, UINT16* status)
{
if (GEM_GetSigValues == 0)
	return -1;
return GEM_GetSigValues(DetSig, mds, pairs, status);
}

int Gemmngr::GetSigBuffedValues(float *DetSig, UINT32 *mds, UINT16 *nsamples, UINT16 *nsens, UINT16 *skips)
{
if (GEM_GetSigBuffedValues == 0)
	return -1;
return GEM_GetSigBuffedValues(DetSig, mds, nsamples, nsens, skips);
}

int Gemmngr::SetupMotionPar(UINT16 skipmax) {
	if(GEM_SetupMotionPar == 0)
		return -1;
	return GEM_SetupMotionPar(skipmax);
}

int Gemmngr::SetMotionCoeff(float rate) {
	if(GEM_SetMotionCoeff == 0)
		return -1;
	return GEM_SetMotionCoeff(rate);

	}


//int Gemmngr::GtRADARValue()
//{
//if(GEM_GetRADARValue==0) return -1;
//return GEM_GetRADARValue();
//}

int Gemmngr::GetRxFreqs(UINT16 SID, UINT16 &bp, UINT16 &av, UINT16 &frsz, UINT32 *fr)
{
if (GEM_GetRxFreqs == 0)
	return -1;
return GEM_GetRxFreqs(SID, bp,av,frsz, fr);
}

int Gemmngr::SetRxTxFreqs(UINT16 SID, UINT16 bp, UINT16 szfr, UINT32 *fr)
{
if (GEM_SetRxTxFreqs == 0)
	return -1;
return GEM_SetRxTxFreqs(SID, bp, szfr, fr);
}

int Gemmngr::SetTxFreqs(UINT16 SID, UINT16 bp, UINT16 szfr, UINT32 *fr)
{
if (GEM_SetTxFreqs == 0)
	return -1;
return GEM_SetTxFreqs(SID, bp, szfr, fr);
}

int Gemmngr::GetTxFreqs(UINT16 SID, UINT16 &bp, UINT16 &szfr, UINT32 *fr)
{
if (GEM_GetTxFreqs == 0)
	return -1;
return GEM_GetTxFreqs(SID, bp, szfr, fr);
}

int Gemmngr::GetFilters(UINT16 SID, int *dmnflt, int *dmdflt)
{
if (GEM_GetFilters == 0)
	return -1;
return GEM_GetFilters(SID, dmnflt, dmdflt);
}

int Gemmngr::SetFilters(UINT16 SID, int dmnflt, int dmdflt)
{
if (GEM_SetFilters == 0)
	return -1;
return GEM_SetFilters(SID, dmnflt, dmdflt);
}

int Gemmngr::GetCMON(UINT16 SID, float *coef, int *thr)
{
if (GEM_GetCMON == 0)
	return -1;
return GEM_GetCMON(SID, coef, thr);
}

int Gemmngr::SetCMON(UINT16 SID, float coef, int thr)
{
if (GEM_SetCMON == 0)
	return -1;
return GEM_SetCMON(SID, coef, thr);
}

int Gemmngr::GetGains(UINT16 SID, int* rx, int *bx)
{
if (GEM_GetGains == 0)
	return -1;
return GEM_GetGains(SID, rx, bx);
}

int Gemmngr::SetGains(UINT16 SID, int rx, int bx)
{
if (GEM_SetGains == 0)
	return -1;
return GEM_SetGains(SID, rx, bx);
}

int Gemmngr::GetOpMode(UINT16 SID, int* opmode)
{
if (GEM_GetOpMode == 0)
	return -1;
return GEM_GetOpMode(SID, opmode);
}

int Gemmngr::SetOpMode(UINT16 SID, int opmode)
{
if (GEM_SetOpMode == 0)
	return -1;
return GEM_SetOpMode(SID, opmode);
}

int Gemmngr::GetHWADCMode(UINT16 SID, UINT16* mode, UINT16* ids, UINT16* sz)
{
if (GEM_GetHWADCMode == 0)
	return -1;
return GEM_GetHWADCMode(SID,mode,ids,sz);
}

int Gemmngr::SetHWADCMode(UINT16 SID, UINT16 mode)
{
if (GEM_SetHWADCMode == 0)
	return -1;
return GEM_SetHWADCMode(SID, mode);
}

int Gemmngr::GetTSMode(UINT16 SID, UINT16* mode, UINT16* ids, UINT16* sz)
{
if (GEM_GetTSMode == 0)
	return -1;
return GEM_GetTSMode(SID,mode,ids,sz);
}

int Gemmngr::SetTSMode(UINT16 SID, UINT16 mode)
{
if (GEM_SetTSMode == 0)
	return -1;
return GEM_SetTSMode(SID, mode);
}

int Gemmngr::GetOutMultipleMode(UINT16 SID, UINT16* ommode)
{
if (GEM_GetOutMultipleMode == 0)
	return -1;
return GEM_GetOutMultipleMode(SID, ommode);
}

int Gemmngr::SetOutMultipleMode(UINT16 SID, UINT16 ommode)
{
if (GEM_SetOutMultipleMode == 0)
	return -1;
return GEM_SetOutMultipleMode(SID, ommode);
}

int Gemmngr::GetCalCoil(UINT16 SID, UINT16* mode)
{
if (GEM_GetCalCoil == 0)
	return -1;
return GEM_GetCalCoil(SID, mode);
}

int Gemmngr::SetCalCoil(UINT16 SID, UINT16 mode)
{
if (GEM_SetCalCoil == 0)
	return -1;
return GEM_SetCalCoil(SID, mode);
}

int Gemmngr::SetDataFormat(UINT16 SID, UINT16 format)
{
if (GEM_SetDataFormat == 0)
	return -1;
return GEM_SetDataFormat(SID, format);
}

int Gemmngr::GetDataFormat(UINT16 SID, int* format)
{
if (GEM_GetDataFormat == 0)
	return -1;
return GEM_GetDataFormat(SID, format);
}

int Gemmngr::GetPortBaud(UINT16 SID, UINT16 port, UINT32* baud,
		UINT32 availbauds[])
{
if (GEM_GetPortBaud == 0)
	return -1;
return GEM_GetPortBaud(SID, port, baud, availbauds);
}

int Gemmngr::SetPortBaud(UINT16 SID, UINT16 port, UINT32 baud)
{
if (GEM_SetPortBaud == 0)
	return -1;
return GEM_SetPortBaud(SID, port, baud);
}

int Gemmngr::EnablePort(UINT16 SID, UINT16 port, UINT16 on)
{
if (GEM_EnablePort == 0)
	return -1;
return GEM_EnablePort(SID, port, on);
}

int Gemmngr::GetBP(UINT16 SID, UINT16*bp, UINT16*bpa)
{
if (GEM_GetBP == 0)
	return -1;
return GEM_GetBP(SID, bp, bpa);
}

int Gemmngr::SetBP(UINT16 SID, UINT16 bp, UINT16 bpa)
{
if (GEM_SetBP == 0)
	return -1;
return GEM_SetBP(SID, bp, bpa);
}
int Gemmngr::GetSystem(UINT16 SID, BYTE& gemtype, BYTE& NFs,int& Fs,float& L,float& Rcoil,float& Rfet,float& Rbatt, float& V, float& Imax, float& G, float& PwLn)
{
if (GEM_GetSystem == 0)
	return -1;
return GEM_GetSystem(SID, gemtype, NFs,Fs,L,Rcoil,Rfet,Rbatt, V, Imax, G, PwLn);
}

int Gemmngr::SetSystem(UINT16 SID, BYTE gemtype,BYTE NFs,int Fs,float L,float Rcoil,float Rfet,float Rbatt, float V, float Imax, float G, float PwLn)
{
if (GEM_SetSystem == 0)
	return -1;
return GEM_SetSystem(SID, gemtype,NFs,Fs,L,Rcoil,Rfet,Rbatt, V, Imax, G, PwLn);
}

int Gemmngr::SetIOPort(UINT16 SID, UINT16 state)
{
if (GEM_SetIOPort == 0)
	return -1;
return GEM_SetIOPort(SID, state);
}

//int Gemmngr::DBGcmd(UINT16 sid)
//{
//if (GEM_DBGcmd == 0)
//	return -1;
//return GEM_DBGcmd(sid);
//}

int Gemmngr::LogOn(char *surveyname, BYTE modetxt)
{
if (GEM_LogOn == 0)
	return -1;
return GEM_LogOn(surveyname, modetxt);
}

int Gemmngr::LogOff(void)
{
if (GEM_LogOff == 0)
	return -1;
return GEM_LogOff();
}

int Gemmngr::LogFreeze(BYTE on)
{
	if (GEM_LogFreeze == 0)
		return -1;
	return GEM_LogFreeze(on);
}

int Gemmngr::SetMarker(UINT16 val)
{
	if (GEM_SetMarker == 0)
		return -1;
	return GEM_SetMarker(val);
}

int Gemmngr::SetLine(UINT16 val)
{
	if (GEM_SetLine == 0)
		return -1;
	return GEM_SetLine(val);
}

int Gemmngr::SyncTimes(UINT16 SID)
{
if (GEM_SyncTimes == 0)
	return -1;
return GEM_SyncTimes(SID);
}

int Gemmngr::GetMsTimes(UINT16 SID, UINT32* msdsp, UINT32* msgps )
{
if (GEM_GetMsTimes == 0)
	return -1;
return GEM_GetMsTimes(SID, msdsp,msgps);
}

int Gemmngr::SetDSPTime(UINT16 SID, UINT32 sec)
{
if (GEM_SetDSPTime == 0)
	return -1;
return GEM_SetDSPTime(SID, sec);
}

int Gemmngr::CaptureTS(UINT16 SID)
{
if (GEM_CaptureTS == 0)
	return -1;
return GEM_CaptureTS(SID);
}

int Gemmngr::Reset(UINT16 SID)
{
if (GEM_Reset == 0)
	return -1;
    return GEM_Reset(SID);
}

int Gemmngr::GetStatus(UINT16 SID, UINT16* status, UINT16* id, UINT16* sz)
{
	if (GEM_GetStatus == 0)
		return -1;
	return GEM_GetStatus(SID, status, id, sz);
}

int Gemmngr::GetGPSGGA(UINT16 SID, eGPSGGA *gga)
{
if (GEM_GetGPSGGA == 0)
	return -1;
return GEM_GetGPSGGA(SID, gga);
}

