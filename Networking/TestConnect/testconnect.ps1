# Output information on network adapters
Get-NetAdapter | Select-Object Name, InterfaceDescription, Status, MacAddress, `
    @{Name="IPv4Address";Expression={$_.IPv4Address.IPAddress}}, `
    @{Name="IPv6Address";Expression={$_.IPv6Address.IPAddress}}, `
    @{Name="DNSServer";Expression={$_.IPv4Interface.DNSServer}}, `
    @{Name="DNSServer";Expression={$_.IPv6Interface.DNSServer}}

# Test the loopback connection
Write-Host "Testing loopback connection..."
if (Test-NetConnection -ComputerName "localhost" -InformationLevel "Quiet") {
    Write-Host "Loopback connection test succeeded." -ForegroundColor Green
}
else {
    Write-Host "Loopback connection test failed." -ForegroundColor Red
}

# Test the connection to the default gateway
$defaultGateway = (Get-NetRoute | Where-Object {$_.DestinationPrefix -eq "0.0.0.0/0"}).NextHop
Write-Host "Testing connection to default gateway ($defaultGateway)..."
if (Test-NetConnection -ComputerName $defaultGateway -InformationLevel "Quiet") {
    Write-Host "Default gateway connection test succeeded." -ForegroundColor Green
}
else {
    Write-Host "Default gateway connection test failed." -ForegroundColor Red
}

# Test the connection to Google
$google = "www.google.com"
Write-Host "Testing connection to $google..."
if (Test-NetConnection -ComputerName $google -InformationLevel "Quiet") {
    Write-Host "Connection to $google succeeded." -ForegroundColor Green
}
else {
    Write-Host "Connection to $google failed." -ForegroundColor Red
}
