<#
    PowerShell-Technician-Toolkit - Winsock Reset
    Powershell Script developed by Peter Germon under the GNU General Public License v3.0
#>

$PSScriptRoot
$resetWinsock= $PSScriptRoot+"\Modules\resetWinsock.ps1"

Write-Host "--------------------------------------------------------------------------------------"
Write-Host " WinPWSH-Toolkit - Winsock Reset"
Write-Host " Powershell Script developed by Peter Germon under the GNU General Public License v3.0"
Write-Host "--------------------------------------------------------------------------------------"
Write-Host " "
Write-Host " "

Write-Host "-------------------------------------------------------"
Write-Host " Resetting Winsock"
Write-Host "-------------------------------------------------------"
&$resetWinsock
