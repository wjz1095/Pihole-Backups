Write-Host "`n-----Copies and Merges All Blocklists"
Write-Host "This may take a while, press ENTER when you're sure you want to continue"
Pause

#uses WGET64.exe to copy all the blocklists from the lists in List Domains.txt 
.\wget64.exe -E -H -k -K -p -e robots=off -i ./"List Domains.txt"


Write-Host "`nMerging all hosts files and removing duplicates..."
Write-Host "This will take a VERY long while"


#Takes all of the hosts files we downloaded, merges them all together and removes duplicates
Get-ChildItem -File -Recurse | Get-Content | Select-Object -unique > "MergedLists.txt"



#Display lines in the master file
Write-Host "Displaying amount of lines in master merged file..."
Get-Content MergedLists.txt | measure-object -line | select Lines
