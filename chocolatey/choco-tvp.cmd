@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

chocolatey install ccleaner -y
chocolatey install defraggler -y
chocolatey install 7zip -y
chocolatey install filezilla -y
chocolatey install speccy -y
chocolatey install ccleaner -y
chocolatey install treesizefree -y

chocolatey upgrade chocolatey
chocolatey upgrade ccleaner
chocolatey upgrade 7zip
chocolatey upgrade filezilla
chocolatey upgrade defraggler
chocolatey upgrade speccy
chocolatey upgrade treesizefree
