# Import Active Directory module
Import-Module ActiveDirectory

# Get all machines in domain
$computers = Get-ADComputer -Filter * -Property Name, OperatingSystem, LastLogonDate

# Loop through each machine and display relevant information
foreach ($computer in $computers) {
    Write-Output "Name: $($computer.Name)"
    Write-Output "Operating System: $($computer.OperatingSystem)"
    Write-Output "Last Logon Date: $($computer.LastLogonDate)"
    Write-Output "--------------------------"
}

# MORE BEING ADDED <3
