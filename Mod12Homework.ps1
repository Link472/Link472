# Patrick Miller
# Mod 12 Homework 

# Declerations 

# Make a path to the current desktop
$desktop_path = "C:\Users\" + $env:USERNAME + "\Desktop"
Set-Location $desktop_path

# Write out headers
Write-Output ("Date,Time,Priority,Classification,Description,Scource IP,Destination IP") | Out-File "alert_data.csv" -encoding ascii

# Read line by line 
$target_file = ".\fast_short.pcap"
$data = @()

foreach ($line in Get-Content $target_file)
{
    if ($line.ReadCount -eq 1)
    {
       continue 
    }

    $split1 = $line.split(",")
    $city = $split1[2].trim(" ")
    $employee_by_city += ,@($city + ": ")
}

# $dog = $line.split(“:”, [System.StringSplitOptions]::RemoveEmptyEntries)

# End script 
Read-Host "Processing is done. Press enter to close the script"