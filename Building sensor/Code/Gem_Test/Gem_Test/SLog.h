#ifndef SLOG_H_
#define SLOG_H_

#include <iostream>
#include <ostream>
#include <stdarg.h>
#include <stdio.h>
#include <string.h>

using namespace std;

class SLOG
{
public:
	SLOG(const char*  tag) {
//		m_stream = std::cout;
		strcpy_s(TAG,16,tag);
		strcat_s(TAG,16,":");
		switchedoff=false;
		cbuffer[0] = 0;
	};
//	virtual ~SLOG() {
//		//m_stream.close();
//	};
	void write(char* logline) {
		if(switchedoff) return;
		std::cout  << TAG << logline << endl;
	};
	void write(const char* logline, ...) {
		if(switchedoff) return;
		va_list argList;
		va_start(argList, logline);
		vsnprintf(cbuffer, 1024, logline, argList);
		va_end(argList);
		std::cout << TAG << cbuffer << endl;
	};
	void off() {
		switchedoff=true;
	}
	void on() {
		switchedoff=false;
	}
private:
	char cbuffer[1024];
	char TAG[16];
	bool switchedoff;
};

#endif //SLOG_H_
