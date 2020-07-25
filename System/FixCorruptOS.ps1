<#
    PowerShell-Technician-Toolkit - FixCorruptOS
    Powershell Script developed by Peter Germon under the GNU General Public License v3.0
#>

$PSScriptRoot
$sfc= $PSScriptRoot+"\Modules\sfc.ps1"
$dism= $PSScriptRoot+"\Modules\dism.ps1"

Write-Host "--------------------------------------------------------------------------------------"
Write-Host " WinPWSH-Toolkit - FixCorruptOS"
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

Write-Host "-------------------------------------------------------"
Write-Host " DISM Disk Image Repair"
Write-Host "-------------------------------------------------------"
&$dism
Write-Host " "
Write-Host " "

Write-Host "-------------------------------------------------------"
Write-Host " Final SFC Scan"
Write-Host "-------------------------------------------------------"
&$sfc
Write-Host " "
Write-Host " "
