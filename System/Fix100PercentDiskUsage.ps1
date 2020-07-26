<#
    PowerShell-Technician-Toolkit - Fix 100 Percent Disk Usage
    Powershell Script developed by Peter Germon under the GNU General Public License v3.0
#>

$PSScriptRoot
$100disk= $PSScriptRoot+"\Modules\100disk.ps1"

Write-Host "--------------------------------------------------------------------------------------"
Write-Host " PowerShell-Technician-Toolkit - Fix 100 Percent Disk Usage"
Write-Host " Powershell Script developed by Peter Germon under the GNU General Public License v3.0"
Write-Host "--------------------------------------------------------------------------------------"
Write-Host " "
Write-Host " "

Write-Host "-------------------------------------------------------"
Write-Host " Shutting down and disabling the following services."
Write-Host "-------------------------------------------------------"
Write-Host "Disabling BITS"
Write-Host "Disabling Superfetch"
Write-Host "Disabling Diagnostic Tracking"
&$100disk
Write-Host " "
Write-Host " "
