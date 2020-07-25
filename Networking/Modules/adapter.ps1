Write-Host "-------------------------------------------------------"
Write-Host " Adapter Information"
Write-Host "-------------------------------------------------------"
Write-Host " "
Write-Host "Adapters"
Get-NetAdapter
Write-Host " "
Write-Host "IP Addresses"
(Get-NetAdapter | Get-NetIPAddress).IPv4Address
Write-Host " "
Write-Host "DNS Addresses"
(Get-NetAdapter | Get-DnsClientServerAddress).ServerAddresses
Write-Host " "
Write-Host " "