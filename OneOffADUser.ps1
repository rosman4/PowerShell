Function New-OneOffADUser{
   [CmdletBinding()]
        Param(
            [Parameter(Mandatory)]
            [String]$FirstName,
            [Parameter(Mandatory)]
            [String]$LastName,
            [Parameter(Mandatory)]
            [String]$Username,
            [Parameter(Mandatory)]
            [String]$Reason,
            [Parameter(Mandatory)]
            [String]$Server,
            [Parameter()]
            [DateTime]$EndDate,
            [Parameter()]
            [int]$PasswordLength=10
        )
        

   }
    

New-OneOffADUser -FirstName "Reem" -LastName "Osman" -Username "rosman" -Reason "ToLearnPowerShell" -Server "LON-SVR1" -EndDate "2022-2-22"
