$serverList = Get-ADComputer -Filter * -properties * | Select-Object -Property Name,LastlogonDate
 

#Checking server connection status
foreach($server in $ServerList){


#Testing Server Connection
   $Connection = Test-NetConnection -Computername $Server.name 
                  
        if($connection.PingSucceeded = $true){
            Write-Host '$Connection.computername is online'}
          
         else {$connection | Select-Object -ExpandProperty ComputerName,PingSucceeded | Export-Csv -Path 'C:\test.csv'
           }
                                                    
     }
     

 
 $connection = Test-NetConnection lon-dc1 |Select-Object -property ComputerName,PingSucceeded | Export-Csv -Path 'C:\test.csv' -NoTypeInformation


 Get-ADComputer -Filter * -properties * | Select-Object -Property Name,LastlogonDate,lastlogoff
  
 Get-ADComputer -Filter * -properties * | Get-Member 

 Test-NetConnection lon-dc1
