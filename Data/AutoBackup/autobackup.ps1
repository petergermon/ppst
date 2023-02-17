param(
    [Parameter(Mandatory=$true)]
    [string]$Source,
    [Parameter(Mandatory=$true)]
    [string]$Destination
)

# Create a timestamp for the backup folder
$timestamp = Get-Date -Format "yyyy-MM-dd-HHmmss"
$backupFolder = Join-Path $Destination "Backup_$timestamp"

# Create the backup folder if it doesn't exist
if (-not (Test-Path $backupFolder)) {
    New-Item -ItemType Directory -Path $backupFolder
}

# Copy the user data to the backup folder
Copy-Item $Source\* $backupFolder -Recurse -Force
