<#
.NOTES
1 Para que el modulo API_function.psd1 funcione correctamente ten en cuenta que debes tener tu APIKEY y no tengas error al momento de hacer la revicion de virus total
2 Para en funcionamiento correcto del modulo savePassword.psm1 debes tener en cuanta que la contraseña no puede tener menos de 8 y mas de 10 caracteres
3 El modulo resourse.psm1 monitoreara el uso de los recursos del sistema ten en cuenta que debes activa el modo estricto en PowerShell, ayudando a identificar errores comunes, como variables no inicializadas
4 El modulo File_function.psd1 mostrara los archivos ocultos del sistema ya sea en directorio actual o de todo el sistema#>
<#
.SYNOPSIS
1) Hara una revicion de tus archivos a traves de virus total
2) Mostrara los archivos ocultos del diractorio actual o de todo el sistema
3) Revisara el usu de los recursos de tu sistema operativo
4) Te ayudara a crear contraseñas seguras para diversas paginas web#>
<#
.DESCRIPTION
Este script de PowerShell te ayudara a realizar diversas tareas diversas tareas de ciberseguridad tendras a elegir 5 opciones de la cual deberas elegir una al completarse se volvera a mostrar el menu si quieres realizar otra tarea o simplemente cerrar el script#>
<# 
.EXAMPLE
Para get-help PS C:\> get-help .\mainpowershell.ps1 -full
Para correr el script .\mainPIA4.PY#>
<#
.LINK
https://www.virustotal.com para tu API-KEY#>
New-ModuleManifest -path ".\resourse.psd1" -Rootmodule ".\resourse.psm1" 
Import-Module ".\resourse.psm1" 
New-ModuleManifest -path ".\savePassword.psd1" -Rootmodule ".\savePassword.psm1" 
Import-Module ".\savePassword.psm1"  
New-ModuleManifest -path ".\API_function.psd1" -RootModule "API_function.psm1" -Author "Grupo6" -Description "Este modulo va a usar verificacion de documentos locales creacion de un cvs para la facilitacion de lectura con la api de virus total, ademas de esto vamos a usar listado de documentos de dir y sus archivos escondidos"
Import-Module ".\API_function.psm1"
New-ModuleManifest -path ".\File_function.psd1" -RootModule "File_function.psm1" -Author "Grupo6" -Description "Este modulo va a usar verificacion de documentos locales creacion de un cvs para la facilitacion de lectura con la api de virus total, ademas de esto vamos a usar listado de documentos de dir y sus archivos escondidos"
Import-Module ".\File_function.psm1" 
Get-Module Get-SystemResources, Start-PasswordManagement, Api_HashVer, File_Show
Write-Host "===================================="
Write-Host "Gracias por iniciar este programa el script se esta ejecutando... "

do {
    Write-Host "Escoja que funcion quiere iniciar: "
    Write-Host "1) Revision de archivos por medio de Virus Total"
    Write-Host "2) Listado de archivos ocultos"
    Write-Host "3) Revision de uso de recursos"
    Write-Host "4) Crear y gestionar contrasenas"
    Write-Host "5) Finalizar programa."
    Write-Host "===================================="
    $option = Read-Host 
    Write-Host "===================================="
    switch ($option) {
        1 {Api_HashVer}
        2 {File_Show}
        3 {Get-SystemResources}
        4 {Start-PasswordManagement} 
        5 {
            Write-Host "Finalizando..."
            Exit
        }
        default {Write-Host "Opcion invalida. Intentalo de nuevo."}
    }
    Write-Host "===================================="
} while ($option -ne 5)
