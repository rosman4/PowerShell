get-command -Module ActiveDirectory | more

help New-ADUser

Update-help

#Create a simple new AD user account
New-ADUser -name test01

#check ADUser list and add a filter
Get-ADUser -Filter "*" | select name

#create a new user with more details
New-ADUser -name test02 -cit "FPO" -State VA -Description "Handsome" -OtherAttributes @{title= "Network Admin";mail= "test2@mssa.com"}

#create a new user with a password and enable user
New-ADUser -name test03 -cit "FPO" -State VA -Description "Handsome" -OtherAttributes @{title= "Network Admin";mail= "test3@mssa.com"} -AccountPassword (ConvertTo-SecureString "Pa55w.rd" -AsPlainText -Force) -Enabled $true
