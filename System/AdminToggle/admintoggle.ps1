# Check if the Administrator account is enabled
$adminAccount = Get-LocalUser -Name "Administrator"
if ($adminAccount.Enabled) {
    # Disable the Administrator account
    Write-Host "Disabling Administrator account..."
    Disable-LocalUser -Name "Administrator"
}
else {
    # Enable the Administrator account
    Write-Host "Enabling Administrator account..."
    Enable-LocalUser -Name "Administrator"
}
