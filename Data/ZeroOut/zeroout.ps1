param(
    [Parameter(Mandatory=$true)]
    [string]$Drive
)

# Calculate the number of bytes in each sector
$sectorSize = (Get-CimInstance Win32_DiskDrive | Where-Object {$_.DeviceID -eq $Drive}).BytesPerSector

# Calculate the total number of sectors on the drive
$totalSectors = (Get-CimInstance Win32_DiskDrive | Where-Object {$_.DeviceID -eq $Drive}).TotalSectors

# Calculate the size of the drive in bytes
$driveSize = $sectorSize * $totalSectors

# Calculate the number of bytes to zero out (everything after the last sector containing data)
$dataSize = (Get-Partition -DriveLetter $Drive).Size
$zeroSize = $driveSize - $dataSize

# Calculate the number of sectors to zero out
$zeroSectors = [int]($zeroSize / $sectorSize)

# Open the drive as a binary file
$file = [System.IO.File]::Open($Drive, 'Open', 'ReadWrite', 'None')

# Create a byte array to store the zeros
$zeros = New-Object byte[] 1024

# Zero out each sector beyond the last one containing data
for ($i = $dataSize; $i -lt $driveSize; $i += 1024) {
    # Seek to the current sector
    $file.Seek($i, 'Begin')

    # Write zeros to the current sector
    $file.Write($zeros, 0, [Math]::Min($zeroSize - $i, 1024))
}

# Close the file
$file.Close()
