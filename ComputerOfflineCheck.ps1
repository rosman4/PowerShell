
[string[]]$ServerList = Get-Adcomputer -filter * | Select-Object -expandproperty Name | ForEach-Object {

$status = ""

IF (Test-Connection -ComputerName $_ -BufferSize 32 -Count 1 -Quiet  )
    {$status = 'Online'
    }
Else {$status = 'Offline'
}

New-Object -TypeName PSobject -Property @{
    'Server' = $_
    'Status' = $status
    }
}  | Export-csv C:\test.csv -NoTypeInformation
