// Ser_Com_test_1.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include "stdafx.h"

using namespace System;
using namespace System::IO::Ports;


int main(arrays<Systems::String^>^ args) {
	SerialPort port("COM13", 9600);
	port.open();
	while (true) {
		int input = convert::ToInt32(Console::ReadLine());
		if (input == 1)
			port.Write("A");
		else
			port.Write("B");
	}
	return 0
}
