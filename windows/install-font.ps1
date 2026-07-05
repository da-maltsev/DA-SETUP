# Install JetBrains Mono Nerd Font for the current user (no admin required).
# Run from PowerShell once before using Windows Terminal.

$ErrorActionPreference = "Stop"

$fontName = "JetBrainsMono"
$releaseUrl = "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip"
$tempDir = "$env:TEMP\$fontName"
$zipPath = "$tempDir\$fontName.zip"
$fontsDir = "$env:LOCALAPPDATA\Microsoft\Windows\Fonts"

New-Item -ItemType Directory -Force -Path $tempDir | Out-Null
New-Item -ItemType Directory -Force -Path $fontsDir | Out-Null

Write-Host "Downloading JetBrains Mono Nerd Font..."
Invoke-WebRequest -Uri $releaseUrl -OutFile $zipPath

Write-Host "Extracting..."
Expand-Archive -Path $zipPath -DestinationPath $tempDir -Force

$ttfFiles = Get-ChildItem -Path $tempDir -Filter "*.ttf"

foreach ($file in $ttfFiles) {
    $destPath = Join-Path $fontsDir $file.Name
    Write-Host "Installing $($file.Name)..."
    Copy-Item -Path $file.FullName -Destination $destPath -Force

    # Register font for the current user
    $fontRegistryName = $file.Name -replace "\.ttf$", " (TrueType)"
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows NT\CurrentVersion\Fonts" `
        -Name $fontRegistryName -Value $destPath
}

Remove-Item -Path $tempDir -Recurse -Force

Write-Host "JetBrains Mono Nerd Font installed. Restart Windows Terminal if it's already open."
