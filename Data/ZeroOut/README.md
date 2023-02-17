<h2>ZeroOut</h2>
To use this script, you can save it as a .ps1 file and run it in a PowerShell terminal with the appropriate parameter. 

For example, if you want to zero out deleted data on the C: drive, you can run the script with the following command:

<i>.\zeroout.ps1 -Drive "C:"</i>

Note that this script will zero out all the space on the drive that is not currently being used by data, so it may take a while to complete. Also, be very careful when specifying the drive parameter, as this script will irreversibly destroy any deleted data on the specified drive.
