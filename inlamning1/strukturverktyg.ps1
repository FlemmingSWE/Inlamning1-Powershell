# Asks the user for the desired map name
function Map-Name {
    param (
        [string]$mapName
    )
    $mapName = Read-Host "Type the desired map name"
    Write-Host "The desired map name is: $mapName"
    return $mapName
}


# Creates the map with the desired map name
function Create-Map {
    param (
    )
    $mapName = Map-Name
    New-Item -Path "C:\Users\Flamur Mehmeti\Downloads\Scripting och automatisering inlämningsuppgift 1\Inlamning1-Powershell\inlamning1" -name "$mapName"  -ItemType "Directory"
    
}

Create-Map