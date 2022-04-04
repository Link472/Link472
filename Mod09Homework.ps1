# Patrick Miller
# Mod 09 Homework

# Declarations 
$base_price = 100

$user_payment = 0

$balance = 0

$random_price = Get-Random -Minimum -3 -Maximum 4

$price_variance = $random_price * 5

$soda_price = $base_price + $price_variance


# Start up
Write-Host "Welcome to the soda machine. You can enter values of 5, 10, or 25 in payment`r`n"
$user_soda = Read-Host "What type of soda would you like?"
if (-not $user_soda) ###############################################################
{
}
Write-Host "`r`nThe price of $user_soda is $soda_price cents`r`n"

# Menu
while ($true)
{
    $coin_input = Read-Host "Enter a coin:"
    if ($coin_input -eq 5)
    {
        clear
        Write-Host "You have entered a nickle.`r`n"
        $coin_input = 5
    }
    elseif ($coin_input -eq 10)
    {
        clear
        Write-Host "You have entered a dime.`r`n"
        $coin_input = 10
    }
    elseif ($coin_input -eq 25)
    {
        clear
        Write-Host "You have entered a quarter.`r`n"
        $coin_input = 25
    }
    else
    {
        clear
        Write-Host "That is not a valid amount. `r`n"
        $coin_input = 0
    }
    
    $user_payment = $coin_input + $user_payment
    $balance = $soda_price - $user_payment

    if ($balance -gt 0)
    {
        Write-Host "You still owe $balance cents`r`n"
        continue
    }
    elseif ($balance -lt 0)
    {
        $balance = $balance * -1
        Write-Host "You have been refunded $balance cents.`r`n"
        break
    }
    else
    {
        break
    }
}

# Ending Statement
Write-Host "Enjoy your $user_soda!`r`n"
Read-Host "Press enter to close the program"