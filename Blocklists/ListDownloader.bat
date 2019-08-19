:: Automatic downloader of pi-hole lists
::
:: To add or remove a domain, add or remove the domain in the "List Domains.txt" file
:: Make sure the wget64.exe is in the same folder as this batch file or it will not run
::
:: The new files SHOULD overwrite the files of the same name and put each file in its own folder/directory structure so it doesn't mix up or overwrite other website host files
::
echo on
title Pi-Hole List Downloader
pause
wget64.exe -E -H -k -K -p -e robots=off -i ./"List Domains.txt"
echo Done! Make sure to copy the lists to a safe place offline
pause