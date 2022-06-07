#reference enviroment cheker list
$ServerListFilePath = "C:\Users\Administrator\Documents\PowerShell\EnvCheckerServerList.csv"

$server = $ServerList

#import the csv file path containing server/s
$ServerList = Import-Csv -Path $ServerListFilePath -Delimiter ',' 

#Empty Array list
$Export = [System.Collections.ArrayList]@()


#Checking server connection status
foreach($server in $ServerList){
$ServerName = $Server.ServerName
$LastStatus = $Server.ServerName
$DownSince = $ServerDownSince  
   $Connection = Test-Connection $Server.servername -Count 1

    
    if($ConnectionStatus -eq "Success"){
        if($LastStatus -ne "Success"){
        Write-Output "$ServerName is Now Online"
     }else{
        Write-Output "$ServerName is Still Online"
     }
   
   }else{
   
     if($LastStatus -eq "Success"){
        Write-Output "$ServerName is Now Offline"
      }else{
        Write-Output "$ServerName is Still Offline"
      }
   }

#last status check    
    $LastConnectionStatus = $ConnectionStatus
    [void]$Export.Add($server)

}


#Comparing server/s last status to current status
$Export | Export-Csv -Path $ServerListFilePath -Delimiter ',' -NoTypeInformation

 