# Patrick Miller
# Mod 12 Homework 

# Declerations 

# Make a path to the current desktop
$user_path = "C:\Users\" + $env:USERNAME + "\Desktop"
Set-Location $user_path

# Write out headers
Write-Output ("Date,Time,Priority,Classification,Description,Scource IP, Destination IP") | Out-File "alert_data.csv" -encoding ascii

# Read line by line 

# $dog = $line.split(“:”, [System.StringSplitOptions]::RemoveEmptyEntries)

# End script 
Read-Host "Processing is done. Press enter to close the script"