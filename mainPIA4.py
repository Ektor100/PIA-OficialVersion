#! /usr/bin/python	

import platform

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
	print("hellooooooooo")


if ps=="Windows":
	Window()	
	print("hello windows")
elif ps =="Linux":
	Linux()
	print("hello linux")
else: 
	print("Your SO is not compatible with the program")












	