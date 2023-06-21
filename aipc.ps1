$adminUsername = "AIPC\administrator"
$adminPassword = "@!pcL!b3rty"
$command = "net user tempadmin Test1234! /add"

$securePassword = ConvertTo-SecureString -String $adminPassword -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential($adminUsername, $securePassword)

Start-Process -FilePath "cmd.exe" -ArgumentList "/c $command" -Credential $credential -Verb RunAs