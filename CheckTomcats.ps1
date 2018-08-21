#Script start running notification

"24 Tomcats check as started"

 

$emailSmtpServer = "1.1.1.1"

$emailSmtpServerPort = "25"

$emailSmtpUser = "xxx"

$emailSmtpPass = "xxx"

 

$emailFrom = "xxx@ttt.gov.il"

$emailTo = "xxx@yyy.com"

 

$emailMessage = New-Object System.Net.Mail.MailMessage( $emailFrom , $emailTo )

$emailMessage.Subject = "tomcats check as started"

#$emailMessage.IsBodyHtml = $true #true or false depends

$emailMessage.Body = "*"

 

$SMTPClient = New-Object System.Net.Mail.SmtpClient( $emailSmtpServer , $emailSmtpServerPort )

$SMTPClient.EnableSsl = $False

$SMTPClient.Credentials = New-Object System.Net.NetworkCredential( $emailSmtpUser , $emailSmtpPass );

$SMTPClient.Send( $emailMessage )

 

"Mail sent to xxx@para-docs.com"

 

#Preperations

"Creating new text file...`n"

Remove-Item -Path C:\Users\nhdocuadmin\Desktop\Documentum_HealthCheck.txt

New-Item -Path C:\Users\nhdocuadmin\Desktop\Documentum_HealthCheck.txt -ItemType file

"New text file created...`n"

 

$WebClient = New-Object net.webclient

 

#Create TXT file

$Date = Get-Date;

Add-Content -Path ('C:\Users\nhdocuadmin\Desktop\Documentum_HealthCheck.txt') "*******************************************************"

Add-Content -Path ('C:\Users\nhdocuadmin\Desktop\Documentum_HealthCheck.txt') "24 Tomcats HealthCheck Report initiated on the: ","`r`n",$date

Add-Content -Path ('C:\Users\nhdocuadmin\Desktop\Documentum_HealthCheck.txt') "*******************************************************"

Add-Content -Path ('C:\Users\nhdocuadmin\Desktop\Documentum_HealthCheck.txt') ""

 

 

#Check tomcats status

echo "APP 1`n"

 

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') "APP1:"

$Date = Get-Date;

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') "`r`n",$date

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') "________"

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') "                                                                     8100:"

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') -Value $webClient.DownloadString("http://ecaedocuapp01:8100/webtop/NGCSHttpRequestQueryService?action=importDocument&userID=docuadmin&url=\\ECAENETAPP01\doc_repository\temp\TESTDOCX.docx&isSigned=true&pipexPriority=2&pipexOCRflag=false")

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') "                                                                     8200:"

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') -Value $webClient.DownloadString("http://ecaedocuapp01:8200/webtop/NGCSHttpRequestQueryService?action=importDocument&userID=docuadmin&url=\\ECAENETAPP01\doc_repository\temp\TESTDOCX.docx&isSigned=true&pipexPriority=2&pipexOCRflag=false")

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') "                                                                     8300:"

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') -Value $webClient.DownloadString("http://ecaedocuapp01:8300/webtop/NGCSHttpRequestQueryService?action=importDocument&userID=docuadmin&url=\\ECAENETAPP01\doc_repository\temp\TESTDOCX.docx&isSigned=true&pipexPriority=2&pipexOCRflag=false")

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') "                                                                     8400:"

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') -Value $webClient.DownloadString("http://ecaedocuapp01:8400/webtop/NGCSHttpRequestQueryService?action=importDocument&userID=docuadmin&url=\\ECAENETAPP01\doc_repository\temp\TESTDOCX.docx&isSigned=true&pipexPriority=2&pipexOCRflag=false")

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') "                                                                     8500:"

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') -Value $webClient.DownloadString("http://ecaedocuapp01:8500/webtop/NGCSHttpRequestQueryService?action=importDocument&userID=docuadmin&url=\\ECAENETAPP01\doc_repository\temp\TESTDOCX.docx&isSigned=true&pipexPriority=2&pipexOCRflag=false")

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') "                                                                     8600:"

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') -Value $webClient.DownloadString("http://ecaedocuapp01:8600/webtop/NGCSHttpRequestQueryService?action=importDocument&userID=docuadmin&url=\\ECAENETAPP01\doc_repository\temp\TESTDOCX.docx&isSigned=true&pipexPriority=2&pipexOCRflag=false")

$Date = Get-Date;

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') "`r`n",$date

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') ""

 

echo "APP 2`n"

 

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') "APP2:"

$Date = Get-Date;

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') "`r`n",$date

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') "________"

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') "                                                                     8100:"

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') -Value $webClient.DownloadString("http://ecaedocuapp02:8100/webtop/NGCSHttpRequestQueryService?action=importDocument&userID=docuadmin&url=\\ECAENETAPP01\doc_repository\temp\TESTDOCX.docx&isSigned=true&pipexPriority=2&pipexOCRflag=false")

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') "                                                                     8200:"

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') -Value $webClient.DownloadString("http://ecaedocuapp02:8200/webtop/NGCSHttpRequestQueryService?action=importDocument&userID=docuadmin&url=\\ECAENETAPP01\doc_repository\temp\TESTDOCX.docx&isSigned=true&pipexPriority=2&pipexOCRflag=false")

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') "                                                                     8300:"

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') -Value $webClient.DownloadString("http://ecaedocuapp02:8300/webtop/NGCSHttpRequestQueryService?action=importDocument&userID=docuadmin&url=\\ECAENETAPP01\doc_repository\temp\TESTDOCX.docx&isSigned=true&pipexPriority=2&pipexOCRflag=false")

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') "                                                                     8400:"

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') -Value $webClient.DownloadString("http://ecaedocuapp02:8400/webtop/NGCSHttpRequestQueryService?action=importDocument&userID=docuadmin&url=\\ECAENETAPP01\doc_repository\temp\TESTDOCX.docx&isSigned=true&pipexPriority=2&pipexOCRflag=false")

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') "                                                                     8500:"

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') -Value $webClient.DownloadString("http://ecaedocuapp02:8500/webtop/NGCSHttpRequestQueryService?action=importDocument&userID=docuadmin&url=\\ECAENETAPP01\doc_repository\temp\TESTDOCX.docx&isSigned=true&pipexPriority=2&pipexOCRflag=false")

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') "                                                                     8600:"

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') -Value $webClient.DownloadString("http://ecaedocuapp02:8600/webtop/NGCSHttpRequestQueryService?action=importDocument&userID=docuadmin&url=\\ECAENETAPP01\doc_repository\temp\TESTDOCX.docx&isSigned=true&pipexPriority=2&pipexOCRflag=false")

$Date = Get-Date;

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') "`r`n",$date

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') ""

 

echo "APP 3`n"

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') "APP3:"

$Date = Get-Date;

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') "`r`n",$date

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') "________"

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') "                                                                     8100:"

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') -Value $webClient.DownloadString("http://ecaedocuapp03:8100/webtop/NGCSHttpRequestQueryService?action=importDocument&userID=docuadmin&url=\\ECAENETAPP01\doc_repository\temp\TESTDOCX.docx&isSigned=true&pipexPriority=2&pipexOCRflag=false")

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') "                                                                     8200:"

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') -Value $webClient.DownloadString("http://ecaedocuapp03:8200/webtop/NGCSHttpRequestQueryService?action=importDocument&userID=docuadmin&url=\\ECAENETAPP01\doc_repository\temp\TESTDOCX.docx&isSigned=true&pipexPriority=2&pipexOCRflag=false")

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') "                                                                     8300:"

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') -Value $webClient.DownloadString("http://ecaedocuapp03:8300/webtop/NGCSHttpRequestQueryService?action=importDocument&userID=docuadmin&url=\\ECAENETAPP01\doc_repository\temp\TESTDOCX.docx&isSigned=true&pipexPriority=2&pipexOCRflag=false")

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') "                                                                     8400:"

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') -Value $webClient.DownloadString("http://ecaedocuapp03:8400/webtop/NGCSHttpRequestQueryService?action=importDocument&userID=docuadmin&url=\\ECAENETAPP01\doc_repository\temp\TESTDOCX.docx&isSigned=true&pipexPriority=2&pipexOCRflag=false")

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') "                                                                     8500:"

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') -Value $webClient.DownloadString("http://ecaedocuapp03:8500/webtop/NGCSHttpRequestQueryService?action=importDocument&userID=docuadmin&url=\\ECAENETAPP01\doc_repository\temp\TESTDOCX.docx&isSigned=true&pipexPriority=2&pipexOCRflag=false")

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') "                                                                     8600:"

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') -Value $webClient.DownloadString("http://ecaedocuapp03:8600/webtop/NGCSHttpRequestQueryService?action=importDocument&userID=docuadmin&url=\\ECAENETAPP01\doc_repository\temp\TESTDOCX.docx&isSigned=true&pipexPriority=2&pipexOCRflag=false")

$Date = Get-Date;

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') "`r`n",$date

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') ""

 

echo "APP 4`n"

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') "APP4:"

$Date = Get-Date;

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') "`r`n",$date

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') "_________"

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') "                                                                     8100:"

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') -Value $webClient.DownloadString("http://ecaedocuapp04:8100/webtop/NGCSHttpRequestQueryService?action=importDocument&userID=docuadmin&url=\\ECAENETAPP01\doc_repository\temp\TESTDOCX.docx&isSigned=true&pipexPriority=2&pipexOCRflag=false")

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') "                                                                     8200:"

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') -Value $webClient.DownloadString("http://ecaedocuapp04:8200/webtop/NGCSHttpRequestQueryService?action=importDocument&userID=docuadmin&url=\\ECAENETAPP01\doc_repository\temp\TESTDOCX.docx&isSigned=true&pipexPriority=2&pipexOCRflag=false")

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') "                                                                     8300:"

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') -Value $webClient.DownloadString("http://ecaedocuapp04:8300/webtop/NGCSHttpRequestQueryService?action=importDocument&userID=docuadmin&url=\\ECAENETAPP01\doc_repository\temp\TESTDOCX.docx&isSigned=true&pipexPriority=2&pipexOCRflag=false")

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') "                                                                     8400:"

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') -Value $webClient.DownloadString("http://ecaedocuapp04:8400/webtop/NGCSHttpRequestQueryService?action=importDocument&userID=docuadmin&url=\\ECAENETAPP01\doc_repository\temp\TESTDOCX.docx&isSigned=true&pipexPriority=2&pipexOCRflag=false")

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') "                                                                     8500:"

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') -Value $webClient.DownloadString("http://ecaedocuapp04:8500/webtop/NGCSHttpRequestQueryService?action=importDocument&userID=docuadmin&url=\\ECAENETAPP01\doc_repository\temp\TESTDOCX.docx&isSigned=true&pipexPriority=2&pipexOCRflag=false")

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') "                                                                     8600:"

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') -Value $webClient.DownloadString("http://ecaedocuapp04:8600/webtop/NGCSHttpRequestQueryService?action=importDocument&userID=docuadmin&url=\\ECAENETAPP01\doc_repository\temp\TESTDOCX.docx&isSigned=true&pipexPriority=2&pipexOCRflag=false")

$Date = Get-Date;

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') "`r`n",$date

Add-Content -Path ('C:\Users\xxx\Desktop\Documentum_HealthCheck.txt') ""

 

#Send Mail with the TXT file atteached

"Sending mail to xxx@para-docs.com "

 

$emailSmtpServer = "1.1.1.1"

$emailSmtpServerPort = "25"

$emailSmtpUser = "xxx"

$emailSmtpPass = "yyy"

 

$emailFrom = "xxx@yyy.gov.il"

$emailTo = "yyy@xxx.com"

 

$emailMessage = New-Object System.Net.Mail.MailMessage( $emailFrom , $emailTo )

$emailMessage.Subject = "tomcats check as ended"

#$emailMessage.IsBodyHtml = $true #true or false depends

$emailMessage.Body = "*"

 

$file="C:\Users\xxx\Desktop\Documentum_HealthCheck.txt"

$att = new-object Net.Mail.Attachment($file)

$emailMessage.Attachments.Add($att)

 

$SMTPClient = New-Object System.Net.Mail.SmtpClient( $emailSmtpServer , $emailSmtpServerPort )

$SMTPClient.EnableSsl = $False

$SMTPClient.Credentials = New-Object System.Net.NetworkCredential( $emailSmtpUser , $emailSmtpPass );

$SMTPClient.Send( $emailMessage )

 
"Mail sent to xxx@yyy.com"