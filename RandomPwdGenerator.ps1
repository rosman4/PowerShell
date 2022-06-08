#Set tep location
Set-Location C:\PowerShell

#set password length
$PasswordLength = '15'

#create a non alpha numeric variable
$NonAlphaNumeric = '0'

#create a variable to hold the password
$SecurePassword = [System.Web.Security.Membership]::GeneratePassword($PasswordLength,$NonAlphaNumeric)

#test password length to see if it matches the set length
$SecurePassword.Length

#create an advanced function

function NewRandomPassword{
[cmdletbinding()]
    param(
        [parameter()]
        [ValidateRange(1, 128)]
        [Int]$PasswordLength = 15,
        [Parameter()]
        [Int]$NonAlphaNumeric = 0
        )

#give the function its purpose
$SecurePassword = [System.Web.Security.Membership]::GeneratePassword($PasswordLength,$NonAlphaNumeric)

#return the functions value
return $SecurePassword

}

$NewSecurePassword = NewRandomPassword -PasswordLength 20 -NonAlphaNumeric 1 
$NewSecurePassword.Length
