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
    if ($null -ne (Get-Service -Name $service -ErrorAction SilentlyContinue)) {
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
regsvr32.exe /s C:\Windows\System32\qmgr.dll
regsvr32.exe /s C:\Windows\System32\qmgrprxy.dll
regsvr32.exe /s C:\Windows\System32\wuaueng.dll
regsvr32.exe /s C:\Windows\System32\wuaueng1.dll
regsvr32.exe /s C:\Windows\System32\wucltui.dll
regsvr32.exe /s C:\Windows\System32\wups.dll
regsvr32.exe /s C:\Windows\System32\wups2.dll
regsvr32.exe /s C:\Windows\System32\wuweb.dll

# Perform Winsock Reset and Winsock Reset proxy
Write-Host "Performing Winsock Reset and Winsock Reset proxy..."
netsh winsock reset
netsh winhttp reset proxy

# Start all services associated with Windows Update and BITS
Write-Host "Starting Windows Update and BITS services..."
foreach ($service in $services) {
    if ($null -ne (Get-Service -Name $service -ErrorAction SilentlyContinue)) {
        Start-Service -Name $service -ErrorAction SilentlyContinue
    }
}

# Restart the computer to apply changes
Write-Host "Restarting computer to apply changes..."
Restart-Computer
