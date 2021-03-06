# Remote System Information#
# Shows hardware and OS details from a list of PCs#
# Written by Thom McKiernan 22/08/2014#
# Fixed by Tal eldan 03/10/2017#

    #Specify the list of PC names in the line above. "." means local system
     
	#PROD	 
    #$ArrComputers =  "CZAMTS", "CZAVAPP","CZAVCSP","CZAVDBP","CZAVDFSP","CZAVMTSP","CZAVXPLP","CZAVXPLP2"
	
	#TEST
	$ArrComputers =  "Czacapt", "Czarpt","Czavdbt","Czavxplt","Czavdfst","Czavcst","Czavapt"

    Clear-Host
    foreach ($Computer in $ArrComputers)
    {
        $computerSystem = get-wmiobject Win32_ComputerSystem -Computer $Computer
        $computerBIOS = get-wmiobject Win32_BIOS -Computer $Computer
        $computerOS = get-wmiobject Win32_OperatingSystem -Computer $Computer
        $computerCPU = get-wmiobject Win32_Processor -Computer $Computer | Select-Object -First 1
        $HDDs = Get-WmiObject Win32_LogicalDisk -ComputerName $Computer -Filter drivetype=3
            write-host "System Information for: " $computerSystem.Name -BackgroundColor Yellow
            "-------------------------------------------------------"
            "Manufacturer: " + $computerSystem.Manufacturer
            "Model: " + $computerSystem.Model
            "Serial Number: " + $computerBIOS.SerialNumber
            "CPU: " + $computerCPU.Name
                foreach ($computerHDD in $HDDs)
                { 
                    "HDD Capacity Drive " +$computerHDD.DeviceID + " {0:N2}" -f ($computerHDD.Size/1GB) + "GB"            
                    "HDD Space: " + " {0:P2}" -f ($computerHDD.FreeSpace/$computerHDD.Size) + " Free (" + "{0:N2}" -f ($computerHDD.FreeSpace/1GB) + "GB)"
                }
            "RAM: " + " {0:N2}" -f ($computerSystem.TotalPhysicalMemory/1GB) + "GB"
            "Operating System: " + $computerOS.Caption + ", Service Pack: " + $computerOS.ServicePackMajorVersion + ", BIT: " + $computerCPU.Description
            "User logged In: " + $computerSystem.UserName
            "Last Reboot: " + $computerOS.ConvertToDateTime($computerOS.LastBootUpTime)
            ""
            "-------------------------------------------------------"
    }