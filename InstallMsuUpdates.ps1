#Run script as admin
#change variable depending on where updates are saved

#get update's list file and set a path
$updatepath = "C:\Updates"

#make a record/list of all updates we currently have in the folder

#Get-HotFix > "$updatespath\old_hotfix_list.txt"
$updates = Get-ChildItem -Path $updatepath | Where-Object {$_.Name -like '".msu"'}

#run a foreach loop
foreach ($update in $updates) {

#get full path to the update file
    $UpdateFilePath = $update.Full

#logging
    Write-Host "Installing Update $update"

#install the update
    Start-Process -Wait wusa -ArgumentList "/update $UpdateFilePath","/quiet","norestart"

}

#create no hotfix list
Get-HotFix > "$updatespath\new_hotfix_list.txt"
