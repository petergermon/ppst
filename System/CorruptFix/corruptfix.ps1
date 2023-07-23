[CmdletBinding()]
param(
    [Parameter(Mandatory=$false)]
    [switch]$quick,
    [Parameter(Mandatory=$false)]
    [switch]$full
)

# Check if the -Quick or -Full parameter is specified
if ($quick) {
    # Perform a quick SFC scan
    Write-Host "Performing quick SFC scan..."
    sfc /scannow
}
elseif ($full) {
    # Check if internet connection is available
    Write-Host "Checking internet connection..."
    if (!(Test-NetConnection -ComputerName "www.google.com" -InformationLevel "Quiet")) {
        Write-Host "Internet connection is not available. Aborting script." -ForegroundColor Red
        return
    }

    # Perform a full SFC scan
    Write-Host "(1/3) Performing full SFC scan..."
    sfc /scannow

    # Run DISM to repair any corrupted system files
    Write-Host "(2/3) Running DISM to repair system files..."
    dism /Online /Cleanup-Image /RestoreHealth

    # Perform another SFC scan to verify the repairs
    Write-Host "(3/3) Performing second SFC scan..."
    sfc /scannow
}
else {
    Write-Host "Please specify either the -Quick or -Full parameter." -ForegroundColor Yellow
}
