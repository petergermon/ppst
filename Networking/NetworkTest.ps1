<#
    WinPWSH-Toolkit - Network Test
    Powershell Script developed by Peter Germon under the GNU General Public License v3.0
#>

$PSScriptRoot
$adapter= $PSScriptRoot+"\Modules\adapter.ps1"
$loopback= $PSScriptRoot+"\Modules\loopback.ps1"
$gateway= $PSScriptRoot+"\Modules\gateway.ps1"
$ping= $PSScriptRoot+"\Modules\ping.ps1"

Write-Host "--------------------------------------------------------------------------------------"
Write-Host " WinPWSH-Toolkit - Network Test"
Write-Host " Powershell Script developed by Peter Germon under the GNU General Public License v3.0"
Write-Host "--------------------------------------------------------------------------------------"
Write-Host " "
Write-Host " "

&$adapter
&$loopback
&$gateway
&$ping