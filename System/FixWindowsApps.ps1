<#
    PowerShell-Technician-Toolkit - FixWindowsApps
    Powershell Script developed by Peter Germon under the GNU General Public License v3.0
#>

$PSScriptRoot
$winapps= $PSScriptRoot+"\Modules\winapps.ps1"

Write-Host "--------------------------------------------------------------------------------------"
Write-Host " WinPWSH-Toolkit - FixWindowsApps"
Write-Host " Powershell Script developed by Peter Germon under the GNU General Public License v3.0"
Write-Host "--------------------------------------------------------------------------------------"
Write-Host " "
Write-Host " "

Write-Host "-------------------------------------------------------"
Write-Host " Reinstalling Windows Apps"
Write-Host "-------------------------------------------------------"
&$winapps
