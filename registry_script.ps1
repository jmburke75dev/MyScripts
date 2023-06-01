#This script was cobbled together by Jason Burke to help with O365 migration.
#I'd like to thank all the little people that helped make this script happen.

#The Set-ItemProperty command will change the existing key value to whatevery you'd like
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CDJ\AAD' -Name 'TenantId' -Value 'Change tenant ID here'
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CDJ\AAD' -Name 'TenantName' -Value 'Change tenant name here'

#The Get-ItemProperty simply shows the property and value of the registry key
Get-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\CDJ\AAD'

#Waits for user to exit
Read-Host -Prompt 'Change made to registry. Press any key to exit'