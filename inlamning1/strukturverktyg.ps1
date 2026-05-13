# Asks the user for the desired map name


function Map-Name {
    param (
        [string]$mapName
    )
    $mapName = Read-Host "Type the desired map name "
    Write-Host "The desired map name is $mapName"
}

Map-Name