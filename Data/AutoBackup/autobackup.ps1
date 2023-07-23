param(
    [Parameter(Mandatory=$true)]
    [string]$src,
    [Parameter(Mandatory=$true)]
    [string]$dst
)

# Create a timestamp for the backup folder
$timestamp = Get-Date -Format "yyyy-MM-dd-HHmmss"
$backupFolder = Join-Path $dst "Backup_$timestamp"

# Create the backup folder if it doesn't exist
if (-not (Test-Path $backupFolder)) {
    New-Item -ItemType Directory -Path $backupFolder
}

# Copy the user data to the backup folder
Copy-Item $src\* $backupFolder -Recurse -Force
