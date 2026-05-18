# Asks the user for the desired map name
function mapName {
    param (
        [string]$name
    )
    $name = Read-Host "Type the desired map name"
    Write-Host "The desired map name is: $name"
    return $name
}


# Creates the map with the desired map name
function createMap {
    param (
        [string]$directoryPath
    )
    $directoryPath = "C:\Users\Flamur Mehmeti\Downloads\Scripting och automatisering inlämningsuppgift 1\Inlamning1-Powershell\inlamning1"
    $name = mapName
    New-Item -Path $directoryPath -name $name  -ItemType Directory
    $directoryPath = "C:\Users\Flamur Mehmeti\Downloads\Scripting och automatisering inlämningsuppgift 1\Inlamning1-Powershell\inlamning1\$name"
}

$directoryPath = createMap

# Creates the subfolders "logs", "scripts" and "temp"
function subFolders {
    param (
        [string]$directoryPath
    )
    $subFolderNames = @("logs", "scripts", "temp")
    foreach ($mapName in $subFolderNames)
    {
        Write-Host "the directory is: $directoryPath\$mapName"
        Write-Host "Creating item: $directoryPath\$mapName"
        New-Item -Path $directoryPath -Name $mapName -ItemType "Directory"
    }
}


subFolders -directoryPath ($directoryPath)
$directoryPath = "$directoryPath" + "\logs"
Write-Host " this is the directory path: $directoryPath\$mapName 99999"

# Function that creates a .txt file
function createTextFile {
    param (
        [string]$textFilePath
    )
    $format = Get-Date -Format "yyyy-MM-dd"
    $date = $format.ToString()
    New-Item -Path $textFilePath -name "log-$date.txt" -ItemType "File" -Value "Struktur skapad: $date"
}

createTextFile -textFilePath ($directoryPath)