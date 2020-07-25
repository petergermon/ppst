<#
    WinPWSH-Toolkit - FixCorruptOS_Quick
    Powershell Script developed by Peter Germon under the GNU General Public License v3.0
#>

$PSScriptRoot
$sfc= $PSScriptRoot+"\Modules\sfc.ps1"

Write-Host "--------------------------------------------------------------------------------------"
Write-Host " WinPWSH-Toolkit - FixCorruptOS_Quick"
Write-Host " Powershell Script developed by Peter Germon under the GNU General Public License v3.0"
Write-Host "--------------------------------------------------------------------------------------"
Write-Host " "
Write-Host " "

Write-Host "-------------------------------------------------------"
Write-Host " SFC Scan"
Write-Host "-------------------------------------------------------"
&$sfc
Write-Host " "
Write-Host " "