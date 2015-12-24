$MyPwd = ConvertTo-SecureString -String "password123" -Force –AsPlainText
$AzureCert = Get-ChildItem -Path Cert:\CurrentUser\My | where {$_.Subject -match "azureautomation.cer”}
Export-PfxCertificate -FilePath C:\azureautomation.pfx -Password $MyPwd -Cert $AzureCert