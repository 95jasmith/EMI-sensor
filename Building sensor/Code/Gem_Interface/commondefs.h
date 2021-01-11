/* "commondefs.h" */
#ifndef _COMMON_DEFS_H
#define _COMMON_DEFS_H

#include "stdafx.h"
#include <windows.h>
#include <stdio.h>


//#define INFINITE  	0xffffffff
#define MAX_PATH  	260

#define ERROR_OK		0
#define ERROR_NA  		21
#define ERROR_ERROR		100
#define ERROR_REPEATED  	123
#define ERROR_MEMORY    	124
#define ERROR_CREATION  	125
#define ERROR_WAITING	    126
#define ERROR_WAITBUSY		127

#define MAX_NSENS  1
#define MAX_FREQS 10

#define TARGNAME_LEN  32
#define MAX_LIBTARGETS 15

#define CMD_EMIS_WBASE	    0x0B00
#define CMD_IPQDTD   CMD_EMIS_WBASE+2


#define BYTE unsigned char


class WCOMMAND
{

protected:
	UINT16 m_comSize;
	UINT16 m_comCode;

public:
	UINT16 m_size;
	UINT16 m_code;
	UINT16 m_id;

public:
	WCOMMAND(BYTE code)
	{
		m_id = 0;
		m_code = 0;
		m_size = 0;
		m_comSize = 6;
		m_comCode = code;
	}
	WCOMMAND(void)
	{
		m_id = 0;
		m_code = 0;
		m_size = 0;
		m_comSize = 6;
		m_comCode = 0;
	}
	virtual ~WCOMMAND(void)
	{
	}

	virtual int Read(BYTE *packet)
	{
		m_size = *((UINT16*) (packet));
		m_code = *((UINT16*) (packet + 2));
		m_id = *((UINT16*) (packet + 4));

		/* error checking */
		if (m_code != m_comCode)
			return 1;
		else
			return 0;
	}

	virtual void Write(BYTE *packet)
	{
		*((UINT16*) (packet)) = m_size;
		*((UINT16*) (packet + 2)) = m_code;
		*((UINT16*) (packet + 4)) = m_id;
	}
};

class IPQDTD: public WCOMMAND
{
protected:
	UINT16 m_offset;

public:
	float quadratures[MAX_FREQS];
	float inphases[MAX_FREQS];
	float misfits[MAX_LIBTARGETS];
	float sig;
	int posX;
	int posY;
	UINT32 mdtime;
	UINT16 ids[MAX_LIBTARGETS];
	UINT16 sensor;
	UINT16 nFreq;
	UINT16 clutter;
	UINT16 nTarg;
	char bestname[TARGNAME_LEN];

public:
	IPQDTD(void)
	{
		m_offset = m_comSize;
		m_comSize += 22;
		m_code = m_comCode = CMD_IPQDTD;
		nFreq = 0;
		nTarg = 0;
		bestname[0] = 0;

		sig=0;
		posX=0;
		posY=0;
		sensor=0;
		clutter=0;
		mdtime=0;
		quadratures[0]=0;
		inphases[0]=0;
		misfits[0]=0;


	}
	~IPQDTD(void)
	{
	}

	int Read(BYTE *packet)
	{
		int i, pos;
		mdtime = *((UINT32*) (packet + m_offset));
		sig = *((float*) (packet + m_offset + 4));
		posX = *((int*) (packet + m_offset + 8));
		posY = *((int*) (packet + m_offset + 12));
		sensor = *((UINT16*) (packet + m_offset + 16));
		nFreq = *((UINT16*) (packet + m_offset + 18));
		clutter = *((UINT16*) (packet + m_offset + 20));

		pos = m_offset + 22;
		for (i = 0; i < nFreq; i++)
		{
			quadratures[i] = *((float*) (packet + pos));
			pos += 4;
		}

		for (i = 0; i < nFreq; i++)
		{
			inphases[i] = *((float*) (packet + pos));
			pos += 4;
		}

		nTarg = *((UINT16*) (packet + pos));
		pos += 2;

		for (i = 0; i < nTarg; i++)
		{
			ids[i] = *((UINT16*) (packet + pos));
			pos += 2;
		}

		for (i = 0; i < nTarg; i++)
		{
			misfits[i] = *((float*) (packet + pos));
			pos += 4;
		}

		strncpy_s(bestname, TARGNAME_LEN,(char*) packet + pos, TARGNAME_LEN);
		pos += TARGNAME_LEN;

		return WCOMMAND::Read(packet);
	}

	void Write(BYTE *packet)
	{
		int i, pos;
		*((UINT32*) (packet + m_offset)) = mdtime;
		*((float*) (packet + m_offset + 4)) = sig;
		*((int*) (packet + m_offset + 8)) = posX;
		*((int*) (packet + m_offset + 12)) = posY;
		*((UINT16*) (packet + m_offset + 16)) = sensor;
		*((UINT16*) (packet + m_offset + 18)) = nFreq;
		*((UINT16*) (packet + m_offset + 20)) = clutter;
		pos = m_offset + 22;

		for (i = 0; i < nFreq; i++)
		{
			*((float*) (packet + pos)) = quadratures[i];
			pos += 4;
		}

		for (i = 0; i < nFreq; i++)
		{
			*((float*) (packet + pos)) = inphases[i];
			pos += 4;
		}

		*((UINT16*) (packet + pos)) = nTarg;
		pos += 2;

		for (i = 0; i < nTarg; i++)
		{
			*((UINT16*) (packet + pos)) = ids[i];
			pos += 2;
		}

		for (i = 0; i < nTarg; i++)
		{
			*((float*) (packet + pos)) = misfits[i];
			pos += 4;
		}

		strncpy_s((char*) (packet + pos), TARGNAME_LEN, bestname, TARGNAME_LEN);
		pos += TARGNAME_LEN;

		m_size = pos;
		m_code = CMD_IPQDTD;

		WCOMMAND::Write(packet);
	}
};

#endif

