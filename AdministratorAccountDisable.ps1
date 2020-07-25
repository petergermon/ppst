<#
    PowerShell-Technician-Toolkit - Enable Administrator Account
    Powershell Script developed by Peter Germon under the GNU General Public License v3.0
#>

$PSScriptRoot
$disableAdmin= $PSScriptRoot+"\Modules\disableAdmin.ps1"

Write-Host "--------------------------------------------------------------------------------------"
Write-Host " PowerShell-Technician-Toolkit - Administrator Account Disable"
Write-Host " Powershell Script developed by Peter Germon under the GNU General Public License v3.0"
Write-Host "--------------------------------------------------------------------------------------"
Write-Host " "
Write-Host " "

Write-Host "-------------------------------------------------------"
Write-Host " Disabling Administrator account"
Write-Host "-------------------------------------------------------"
&$disableAdmin
Write-Host " "
Write-Host " "