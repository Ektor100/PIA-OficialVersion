#! /usr/bin/python	

import platform
import subprocess


def Continue_Program():
	anl=int(input("please do state if you wish to 1) si 2) no "))
	return anl
anl=(Continue_Program())
print (anl)
	
def platform_system():
	ps= (platform.system())
	return 	ps

ps=(platform_system())
print(ps)
def Linux():
	print("byeeeeebyeeeee")
	
	
	
def Window():
	import subprocess, sys

	p = subprocess.Popen(["powershell.exe", 
              "C:\\Users\\USER\\Desktop\\helloworld.ps1"], 
              stdout=sys.stdout)
	p.communicate()


if ps=="Windows":
	Window()	
	
elif ps =="Linux":
	Linux()
else: 
	print("Your SO is not compatible with the program")
	
