# Define a hashtable to map service names to display names
$services = @{
    "BITS" = "Background Intelligent Transfer Service"
    "SysMain" = "Superfetch"
    "DiagTrack" = "Connected User Experiences and Telemetry"
}

# Check if the script is running with elevated privileges
$isAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
if (!$isAdmin) {
    Write-Host "This script requires elevated privileges. Please run PowerShell as an administrator." -ForegroundColor Yellow
    return
}

# Enable or disable the specified services
foreach ($service in $services.Keys) {
    $displayName = $services[$service]
    $status = Get-Service -Name $service | Select-Object -ExpandProperty Status
    if ($status -eq "Running") {
        # Disable the service
        Write-Host "Disabling $displayName service..."
        Set-Service -Name $service -StartupType Disabled
    }
    else {
        # Enable the service
        Write-Host "Enabling $displayName service..."
        Set-Service -Name $service -StartupType Manual
        Start-Service -Name $service
    }
}
