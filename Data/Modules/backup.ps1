$BackupLocation = Read-Host -Prompt 'Enter Backup Location (e.g. F:\Backup): '
Copy-Item -Path "C:\Users" -Destination "$BackupLocation" -Recurse
