#!/bin/python3
import sys
import os




from datetime import date, datetime, timedelta
#import serial
from subprocess import Popen, PIPE
import subprocess
import sys

#ser = serial.Serial('/dev/ttyACM0', 9600)

#while 1 :
	#line = ser.readline().strip()
	#print line




def process_input(arg_list):

	if len(arg_list) == 1:
		return ""
	if " " in arg_list[1]:
		return arg_list[1]
	else:

		return " ".join(arg_list[1:])


if __name__=="__main__":

	as_url = False

	if "--url" not in sys.argv:

		query = process_input(sys.argv)
	else:
		query = sys.argv[-1]
		as_url = True
	if as_url:
		p = subprocess.call(["chromium",query],stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
	
		exit(0)
	p = subprocess.call(["chromium","https://www.google.com/search?q="+query],stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
	exit(0)

