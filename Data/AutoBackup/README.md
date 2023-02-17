<h2>AutoBackup</h2>
To use this script, you can save it as a .ps1 file and run it in a PowerShell terminal with the appropriate parameters. 

For example, if you want to backup user data from "C:\Users\John" to "D:\Backups", you can run the script with the following command:
<i>.\backup.ps1 -Source "C:\Users\John" -Destination "D:\Backups"</i>

This will create a timestamped folder in "D:\Backups" (e.g., "D:\Backups\Backup_2023-02-17-121500") and copy all the user data from "C:\Users\John" to that folder. Note that the script will overwrite any existing files with the same name in the backup folder, so be careful when specifying the destination path.
