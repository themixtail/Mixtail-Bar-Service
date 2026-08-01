Add-Type -AssemblyName System.Drawing

$srcPath = "c:\Users\Dell\Downloads\Mixtail Design\logo-icon.png"
$destDir = "c:\Users\Dell\Downloads\Mixtail Design"

$srcImg = [System.Drawing.Image]::FromFile($srcPath)
$bmp = New-Object System.Drawing.Bitmap(48, 48)
$g = [System.Drawing.Graphics]::FromImage($bmp)
$g.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
$g.SmoothingMode = [System.Drawing.Drawing2D.SmoothingMode]::HighQuality
$g.DrawImage($srcImg, 0, 0, 48, 48)
$g.Dispose()

$outPath = Join-Path $destDir "favicon-48x48.png"
$bmp.Save($outPath, [System.Drawing.Imaging.ImageFormat]::Png)
$bmp.Dispose()
$srcImg.Dispose()

Write-Host "Generated favicon-48x48.png successfully!"
