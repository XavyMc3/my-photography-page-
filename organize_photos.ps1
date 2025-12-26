
$sourceDir = "d:\proyects\webdesign\xavyportfolio\fotos"
$destDir = "d:\proyects\webdesign\xavyportfolio\public\images\portfolio"

# Clean destination
if (Test-Path $destDir) {
    Remove-Item "$destDir\*" -Recurse -Force
}
else {
    New-Item -ItemType Directory -Path $destDir
}

$idCounter = 1
$jsonOutput = @()

# 1. Process Hero Images
$heroFiles = Get-ChildItem "$sourceDir\hero\*.jpg"
$hCount = 1
foreach ($file in $heroFiles) {
    $destName = "hero-$hCount.jpg"
    Copy-Item $file.FullName "$destDir\$destName"
    $hCount++
}

# 2. Process Portfolio Categories
# Modified categories mapping
$categories = @{
    "retrato"      = "Retrato";
    "proyectos"    = "Proyectos"; # Renamed from Arquitectura
    "urbano"       = "Urbano";
    "paisaje"      = "Paisaje";
    "comida"       = "Comida";
    "restaurantes" = "Restaurantes" # New separate category
}

# Order matters for consistent IDs
$folders = "retrato", "proyectos", "urbano", "paisaje", "comida", "restaurantes"

foreach ($folder in $folders) {
    $catName = $categories[$folder]
    $path = "$sourceDir\$folder"
    if (Test-Path $path) {
        $files = Get-ChildItem "$path\*.jpg"
        foreach ($file in $files) {
            $ext = $file.Extension.TrimStart('.')
            $destName = "$idCounter.$ext"
            Copy-Item $file.FullName "$destDir\$destName"
            
            # Create object string
            $title = "$catName $idCounter" 
            $jsonOutput += "  { id: $idCounter, title: '$title', category: '$catName', ext: '$ext' },"
            
            $idCounter++
        }
    }
}

# Output the JS array content
Write-Output "const images = ["
$jsonOutput | ForEach-Object { Write-Output $_ }
Write-Output "];"
