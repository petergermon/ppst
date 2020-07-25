<#
    PowerShell-Technician-Toolkit - Fix Windows Update
    Powershell Script developed by Peter Germon under the GNU General Public License v3.0
#>

$PSScriptRoot
$resetWinUp= $PSScriptRoot+"\Modules\resetWinUp.ps1"

Write-Host "--------------------------------------------------------------------------------------"
Write-Host " WinPWSH-Toolkit - Fix Windows Update"
Write-Host " Powershell Script developed by Peter Germon under the GNU General Public License v3.0"
Write-Host "--------------------------------------------------------------------------------------"
Write-Host " "
Write-Host " "

Write-Host "-------------------------------------------------------"
Write-Host " Resetting Windows Update"
Write-Host "-------------------------------------------------------"
&$resetWinUp
