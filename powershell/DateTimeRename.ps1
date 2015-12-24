$folder = "D:\temp2"
$files = get-childitem -path $folder -recurse | where { -not $_.PSIsContainer }
[datetime]$dirDate = New-Object DateTime

foreach ($file In $files) {

    $strDate = $file.Name.substring(0,8)

    if (-Not [DateTime]::TryParseExact($strDate, "yyyyMMdd", 
        [System.Globalization.CultureInfo]::InvariantCulture, 
        [System.Globalization.DateTimeStyles]::None, [ref]$dirDate)) {

        $newName = $file.lastwritetime.tostring("yyyyMMdd ") + $file.name
        echo $newName
        Rename-Item -path $file.Fullname -newname $newName
    }   
}