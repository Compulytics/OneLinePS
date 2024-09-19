$CommandSource = Read-Host "Enter the full path to the script you would like make into one line"
$CommandB64 = [Convert]::ToBase64String([Text.Encoding]::ASCII.GetBytes($(get-content -RAW -path $CommandSource)))
$PSCommand = "Invoke-Expression -Command `$([System.Text.Encoding]::ASCII.GetString([System.Convert]::FromBase64String(`"$CommandB64`")))"
Write-Host $PSCommand
sleep 60
