﻿# PowerShell script to list the DLL files under the system32 folder
$Dir = get-childitem C:\windows\system32 -recurse
$Dir |get-member
# $List = $Dir | where {$_.extension -eq ".dll"}
# $List |ft fullname |out-file C:\scripts\dll.txt
# List | format-table name