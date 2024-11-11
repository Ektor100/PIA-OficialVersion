PIA Programacion para ciberseguridad 
#Descripcion del proyecto:
  Este proyecto de ciberseguridad proporciona un conjunto de herramientas y funciones creadas para proteger y monitorear el 
  entorno de un sistema mediante la creación de 
  contraseñas seguras, verificación de archivos locales contra VirusTotal, monitoreo de recursos del sistema y configuración de un 
  honeypot.

#Instalacion:
.-Clonar repositorio: 
  #!/bin/bash 
  git clone <URL_del_repositorio>

.-Instalar las dependencias:
  #En sistemas linux se debe asegurar de tener instalado "tcpdump":
  #!/bin/bash
  sudo apt update
  sudo apt install tcpdump

.-Configurar las claves de API:
  Se necesita una clave de API de VirusTotal para el analisis de archivos, se debe ingresar la clave cuando se solicite el modulo 
  "API_function".

#Uso:
  Menu principal: 
  Ejecutar el archivo principal "main.ps1" o "main.sh" (esto dependera del sistema operativo) para entrar al menu principal. Desde 
  el menu puedes seleccionar entre las opciones de escaneo de archvios, listado de archivos ocultos, monitoreo de recursos, 
  gestion de contraseñas y finalizar el programa. 

 #Dependencias:
  .-Powershell.
  .-Python.
  .-Herramienta adicional: "tcpdump" para el monitoreo de trafico de red.

 #Creditos: 
  Proyecto desarrollado por el Grupo 6, cuyos miembros son:
  Manoa Aguilar Reyes
  Ektor Kalev Hernandez Ortega
  Agustin Saldana Alba 
  Marcos Sotelo Vazquez
  Aldo de Jesus Luna Maldonado 
  Abril Azeneth Alcocer Piñero 
