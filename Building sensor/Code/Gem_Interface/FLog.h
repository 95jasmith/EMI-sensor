#ifndef FLOG_H_
#define FLOG_H_

#include <stdio.h>
#include <stdarg.h>
#include <fstream>

using namespace std;

class FLOG {
public:
	FLOG(char* filename) {
		m_stream.open(filename);
		switchedoff=false;
	};
	virtual ~FLOG() {
		m_stream.flush();
		m_stream.close();
	};
	void write(char* logline) {
		if(switchedoff) return;
		m_stream << logline << endl;
	};
	void write(const char* logline, ...) {
		if(switchedoff) return;
		va_list argList;
		va_start(argList, logline);
		vsnprintf(cbuffer, 1024, logline, argList);
		va_end(argList);
		m_stream << cbuffer;
	};
	void off() {
		switchedoff=true;
	}
	void on() {
		switchedoff=false;
	}
private:
	char cbuffer[1024];
	bool switchedoff;
	ofstream m_stream;
};

#endif //FLOG_H_
