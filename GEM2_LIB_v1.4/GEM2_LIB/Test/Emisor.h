
#ifndef EMISOR_H_
#define EMISOR_H_

#include "commondefs.h"
#define IDENTIFY_MODE_FREESCALE      0x08

/* CALLBACKS */
typedef int (*MatchEMISEventCallback)(UINT16, IPQDTD);

/* EMIS mngmnt */
typedef int (*EMIS_CONNECT)(int, int, int, int);
typedef int (*EMIS_DISCONNECT)(void);
typedef int (*EMIS_SETPKTHRESHOLDS)(float, float);
typedef int (*EMIS_SETCLUTTERTHRESHOLD)(float);
typedef int (*EMIS_LOADLIBRARY)(char *, UINT16, UINT16&, char*);

typedef int (*EMIS_LOGON)(char *, char *);
typedef int (*EMIS_LOGOFF)(void);
typedef int (*EMIS_SAVE)(void);
typedef int (*EMIS_ADDDATA)( int, int, UINT32, float*, float*, float*,int*, int* );
typedef int (*EMIS_SETLIBDATAEX)(UINT16, UINT16, UINT16, int*, float*, float*);
typedef int (*EMIS_SETEVENTCALLBACK) (void*);


class Emisor
{
public:
    Emisor(void);
    ~Emisor(void);
    bool IsConnected() { return hinstLib!=0; };
    int Connect(int NSEN, int NFRQ);
    int DisConnect();
    int LoadSignatures(char* library, UINT16 mode, UINT16& libTargs, char* libNames);
    int SetPeakThr(float peakthreshold, float edgecoeff);
    int SetClutterThr(float cluthreshold);
    int SetMatchCallBackFn(MatchEMISEventCallback func);

    int LogOn(char *surveyname, char* infostr);
    int LogOff();
    int AddData(int sens, int freqs, UINT32 mdtime, float* sig,
    		float* qd, float* ip, int* PosXcm, int* PosYcm);

    float GetClutterThr() {	return m_clutterthreshold; }
    float GetPeakThr() { return m_peakthreshold; }
    float GetEdgePeakCoef() { return m_EdgthrCoeff; }
    UINT16 GetMode() { return m_mode; }
    char* GetSignatures() { return m_signatures; }


    EMIS_CONNECT	EMIS_Connect;
    EMIS_DISCONNECT	EMIS_DisConnect;
    EMIS_LOADLIBRARY	EMIS_LoadLibrary;

    EMIS_LOGON		EMIS_LogOn;
    EMIS_LOGOFF		EMIS_LogOff;
    EMIS_ADDDATA        EMIS_AddData;
    EMIS_SETPKTHRESHOLDS  EMIS_SetPeakThrs;
    EMIS_SETCLUTTERTHRESHOLD EMIS_SetClutterThr;
    EMIS_SETLIBDATAEX EMIS_SetLibDataEx;
    EMIS_SETEVENTCALLBACK EMIS_SetMatchEventCB;

private:
    int m_NSEN;
    int m_NFRQ;
    float m_clutterthreshold;
    float m_EdgthrCoeff;
    float m_peakthreshold;
    UINT16 m_mode;
    char m_signatures[255];
protected:
    HINSTANCE hinstLib;
    int m_FLTLEN;


};

#endif // EMISOR_H_
