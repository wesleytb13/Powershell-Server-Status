$DecaturServer = Get-Content "[Path to server list]"

while($true)
{
Clear-Host
write-host "`rDecatur Server Status`r"
write-host "------------------------------------------`n"
foreach ($Server in $DecaturServer){
if (test-Connection -ComputerName $Server -count 1 -quiet){
	write-host "$Server`r" -foreground Green
		} else
		{ write-host "$Server`r" -foreground Red
		}
	}	
	Start-Sleep -s 305
}
