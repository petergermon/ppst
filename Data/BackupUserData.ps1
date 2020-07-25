<#
    PowerShell-Technician-Toolkit - Backup User Data
    Powershell Script developed by Peter Germon under the GNU General Public License v3.0
#>

$PSScriptRoot
$backup= $PSScriptRoot+"\Modules\backup.ps1"

Write-Host "--------------------------------------------------------------------------------------"
Write-Host " PowerShell-Technician-Toolkit - Backup User Data"
Write-Host " Powershell Script developed by Peter Germon under the GNU General Public License v3.0"
Write-Host "--------------------------------------------------------------------------------------"
Write-Host " "
Write-Host " "

Write-Host "-------------------------------------------------------"
Write-Host " Backup User Data"
Write-Host "-------------------------------------------------------"
&$backup
Write-Host " "
Write-Host " "
