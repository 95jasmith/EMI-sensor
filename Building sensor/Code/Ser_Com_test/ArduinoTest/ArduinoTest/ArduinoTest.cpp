// ArduinoTest.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <iostream>
using namespace std;
#include <string>
#include <stdlib.h>
#include "SerialPort.h"

char output[1];
char commport[] = "\\\\.\\COM12";
char* port = commport;
char incoming[MAX_DATA_LENGTH];

int main() {
	SerialPort arduino(port);
	if (arduino.isConnected()) {
		cout << "Connection is Established";
	}
	else {
		cout << "Error in port name";
	}
	while (arduino.isConnected()) {
		/*
		string command;
		cin >> command;
		char* charArray = new char[command.size() + 1];
		copy(command.begin(), command.end(), charArray);
		charArray[command.size()] = '\n';

		arduino.writeSerialPort(charArray, MAX_DATA_LENGTH);
		*/
		if (arduino.readSerialPort(output, MAX_DATA_LENGTH)) {


			cout << output;
			output[1] = 0;
		}
		//delete[] charArray;
	}
	return 0;
}
