<#
    WinPWSH-Toolkit - Restart Adapters
    Powershell Script developed by Peter Germon under the GNU General Public License v3.0
#>

$PSScriptRoot
$restartNIC= $PSScriptRoot+"\Modules\restartNIC.ps1"

Write-Host "--------------------------------------------------------------------------------------"
Write-Host " WinPWSH-Toolkit - Restart Adapters"
Write-Host " Powershell Script developed by Peter Germon under the GNU General Public License v3.0"
Write-Host "--------------------------------------------------------------------------------------"
Write-Host " "
Write-Host " "

&$restartNIC