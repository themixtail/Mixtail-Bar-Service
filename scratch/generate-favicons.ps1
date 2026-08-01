Add-Type -AssemblyName System.Drawing

function Resize-Image {
    param (
        [string]$InputFile,
        [string]$OutputFile,
        [int]$Width,
        [int]$Height
    )
    $src = [System.Drawing.Image]::FromFile($InputFile)
    $dest = New-Object System.Drawing.Bitmap($Width, $Height)
    $g = [System.Drawing.Graphics]::FromImage($dest)
    
    $g.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
    $g.SmoothingMode = [System.Drawing.Drawing2D.SmoothingMode]::HighQuality
    $g.PixelOffsetMode = [System.Drawing.Drawing2D.PixelOffsetMode]::HighQuality
    $g.CompositingQuality = [System.Drawing.Drawing2D.CompositingQuality]::HighQuality
    
    $g.Clear([System.Drawing.Color]::Transparent)
    $g.DrawImage($src, 0, 0, $Width, $Height)
    
    $dest.Save($OutputFile, [System.Drawing.Imaging.ImageFormat]::Png)
    
    $g.Dispose()
    $dest.Dispose()
    $src.Dispose()
    Write-Host "Generated: $OutputFile ($Width x $Height)"
}

$source = "c:\Users\Dell\Downloads\Mixtail Design\logo-icon.png"
$targetDir = "c:\Users\Dell\Downloads\Mixtail Design"

Resize-Image -InputFile $source -OutputFile "$targetDir\favicon-16x16.png" -Width 16 -Height 16
Resize-Image -InputFile $source -OutputFile "$targetDir\favicon-32x32.png" -Width 32 -Height 32
Resize-Image -InputFile $source -OutputFile "$targetDir\favicon-48x48.png" -Width 48 -Height 48
Resize-Image -InputFile $source -OutputFile "$targetDir\apple-touch-icon.png" -Width 180 -Height 180
Resize-Image -InputFile $source -OutputFile "$targetDir\android-chrome-192x192.png" -Width 192 -Height 192
Resize-Image -InputFile $source -OutputFile "$targetDir\android-chrome-512x512.png" -Width 512 -Height 512
Resize-Image -InputFile $source -OutputFile "$targetDir\favicon.ico" -Width 32 -Height 32
