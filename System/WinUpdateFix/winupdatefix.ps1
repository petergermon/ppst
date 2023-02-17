# Check if the script is running with elevated privileges
$isAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
if (!$isAdmin) {
    Write-Host "This script requires elevated privileges. Please run PowerShell as an administrator." -ForegroundColor Yellow
    return
}

# Stop all services associated with Windows Update and BITS
Write-Host "Stopping Windows Update and BITS services..."
$services = "wuauserv", "BITS", "CryptSvc", "msiserver"
foreach ($service in $services) {
    if ((Get-Service -Name $service -ErrorAction SilentlyContinue) -ne $null) {
        Stop-Service -Name $service -Force -ErrorAction SilentlyContinue
    }
}

# Purge Windows Update cache and files
Write-Host "Purging Windows Update cache and files..."
Remove-Item -Path "$env:SystemRoot\SoftwareDistribution\DataStore\Logs\edb.log" -Force
Remove-Item -Path "$env:SystemRoot\SoftwareDistribution\DataStore\DataStore.edb" -Force
Remove-Item -Path "$env:SystemRoot\SoftwareDistribution\Download" -Recurse -Force

# Register BITS and Windows Update files
Write-Host "Registering BITS and Windows Update files..."
cd /d %windir%\system32
regsvr32.exe /s qmgr.dll
regsvr32.exe /s qmgrprxy.dll
regsvr32.exe /s wuaueng.dll
regsvr32.exe /s wuaueng1.dll
regsvr32.exe /s wucltui.dll
regsvr32.exe /s wups.dll
regsvr32.exe /s wups2.dll
regsvr32.exe /s wuweb.dll

# Perform Winsock Reset and Winsock Reset proxy
Write-Host "Performing Winsock Reset and Winsock Reset proxy..."
netsh winsock reset
netsh winhttp reset proxy

# Start all services associated with Windows Update and BITS
Write-Host "Starting Windows Update and BITS services..."
foreach ($service in $services) {
    if ((Get-Service -Name $service -ErrorAction SilentlyContinue) -ne $null) {
        Start-Service -Name $service -ErrorAction SilentlyContinue
    }
}

# Restart the computer to apply changes
Write-Host "Restarting computer to apply changes..."
Restart-Computer
