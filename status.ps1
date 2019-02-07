$ServerDec = Get-Content "c:\DecaturServers.txt"
$ServerHart = Get-Content "c:\HartselleServers.txt"
$ServerFL = Get-Content "c:\FloridaServers.txt"

while($true)
{
Clear-Host
write-host "`rDecatur Server Status:`r"
write-host "---------------------------------------------------------`r"
foreach ($Server in $ServerDec){
if (test-Connection -ComputerName $Server -count 1 -quiet){
	write-host "$Server is responding`r" -foreground Green
		} else
		{ write-host "$Server not responding`r" -foreground Red
		}
	}

write-host "`r`nHartselle Server Status:`r"
write-host "---------------------------------------------------------`r"
foreach ($Server in $ServerHart){
if (test-Connection -ComputerName $Server -count 1 -quiet){
	write-host "$Server is responding`r" -foreground Green
		} else
		{ write-host "$Server not responding`r" -foreground Red
		}
	}	

write-host "`r`nFlorida Server Status:`r"
write-host "---------------------------------------------------------`r"
foreach ($Server in $ServerFL){
if (test-Connection -ComputerName $Server -count 1 -quiet){
	write-host "$Server is responding`r" -foreground Green
		} else
		{ write-host "$Server not responding`r" -foreground Red
		}
	}	
	
	Start-Sleep -s 300
}
