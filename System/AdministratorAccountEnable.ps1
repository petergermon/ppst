<#
    PowerShell-Technician-Toolkit - Enable Administrator Account
    Powershell Script developed by Peter Germon under the GNU General Public License v3.0
#>

$PSScriptRoot
$enableAdmin= $PSScriptRoot+"\Modules\enableAdmin.ps1"

Write-Host "--------------------------------------------------------------------------------------"
Write-Host " PowerShell-Technician-Toolkit - Administrator Account Enable"
Write-Host " Powershell Script developed by Peter Germon under the GNU General Public License v3.0"
Write-Host "--------------------------------------------------------------------------------------"
Write-Host " "
Write-Host " "

Write-Host "-------------------------------------------------------"
Write-Host " Enabling Administrator account"
Write-Host "-------------------------------------------------------"
&$enableAdmin
Write-Host " "
Write-Host " "
