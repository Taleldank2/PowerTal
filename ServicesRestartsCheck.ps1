
##################################################################################################################
#This script sample each CZA documentum server and checks last restart time for the main services of this server.
#This script can give good indication whether the Sunday's enviroment restarts performed as expected.
##################################################################################################################

$output += "--------------CZAVCSP--------------`n"
$output += Get-EventLog -LogName “System” -Source “Service Control Manager” -EntryType “Information”,"error" -ComputerName "CZAVCSP" -Message “*Documentum*” -Newest 2 | Format-Table -Wrap 
$output += Get-EventLog -LogName “System” -Source “Service Control Manager” -EntryType “Information” -ComputerName "CZAVCSP" -Message “*Docbroker*” -Newest 2 | Format-Table -Wrap 
$output += Get-EventLog -LogName “System” -Source “Service Control Manager” -EntryType “Information” -ComputerName "CZAVCSP" -Message “*Method Server*” -Newest 2 | Format-Table -Wrap

$output += "--------------CZAVXPLP2------------`n"
$output += Get-EventLog -LogName “System” -Source “Service Control Manager” -EntryType “Information” -ComputerName "CZAVXPLP2" -Message “*IndexAgent*” -Newest 2 | Format-Table -Wrap
$output += Get-EventLog -LogName “System” -Source “Service Control Manager” -EntryType “Information” -ComputerName "CZAVXPLP2" -Message “*Dsearch*” -Newest 2 | Format-Table -Wrap

$output += "--------------CZAVXPLP--------------`n"
$output += Get-EventLog -LogName “System” -Source “Service Control Manager” -EntryType “Information” -ComputerName "CZAVXPLP" -Message “*CPS*” -Newest 2 | Format-Table -Wrap
$output += Get-EventLog -LogName “System” -Source “Service Control Manager” -EntryType “Information” -ComputerName "CZAVXPLP" -Message “*Dsearch*” -Newest 2 | Format-Table -Wrap

$output += "--------------CZAVDFSP--------------`n"
$output += Get-EventLog -LogName “System” -Source “Service Control Manager” -EntryType “Information” -ComputerName "CZAVDFSP" -Message “*Tomcat*” -Newest 2 | Format-Table -Wrap

$output += "--------------CZAVAPP--------------`n"
$output += Get-EventLog -LogName “System” -Source “Service Control Manager” -EntryType “Information” -ComputerName "CZAVAPP" -Message “*Tomcat*” -Newest 2 | Format-Table -Wrap

$output > c:\tester.txt

###Timeout###
Timeout 10