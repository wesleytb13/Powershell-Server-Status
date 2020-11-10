$FloridaServer = Get-Content "[Path to server list]"
$HartselleServer = Get-Content "[Path to server list]"

while($true)
{
Clear-Host
write-host "`rHartselle Server Status`r"
write-host "------------------------------------------`n"	
foreach ($Server in $HartselleServer){
if (test-Connection -ComputerName $Server -count 1 -quiet){
	write-host "$Server`r" -foreground Green
		} else
		{ write-host "$Server`r" -foreground Red
		}
	}
write-host "`r`nFlorida Server Status`r"
write-host "------------------------------------------`n"
foreach ($Server in $FloridaServer){
if (test-Connection -ComputerName $Server -count 1 -quiet){
	write-host "$Server`r" -foreground Green
		} else
		{ write-host "$Server`r" -foreground Red
		}
	}		
	Start-Sleep -s 300
}
