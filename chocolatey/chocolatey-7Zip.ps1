<powershell>
Set-ExecutionPolicy Unrestricted -force(iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1)))>$null 2>&1 (gc C:\ProgramData\chocolatey\chocolateyinstall\chocolatey.config).replace("true","fals") | sc C:\ProgramData\chocolatey\chocolateyinstall\chocolatey.config
choco install 7zip -y>$null 2>&1
</powershell>