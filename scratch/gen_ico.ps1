Add-Type -AssemblyName System.Drawing

$srcPath = "c:\Users\Dell\Downloads\Mixtail Design\logo-icon.png"
$destIco = "c:\Users\Dell\Downloads\Mixtail Design\favicon.ico"

$srcImg = [System.Drawing.Image]::FromFile($srcPath)
$bmp = New-Object System.Drawing.Bitmap($srcImg, 48, 48)
$iconHandle = $bmp.GetHicon()
$icon = [System.Drawing.Icon]::FromHandle($iconHandle)

$fs = New-Object System.IO.FileStream($destIco, [System.IO.FileMode]::Create)
$icon.Save($fs)
$fs.Close()
$icon.Dispose()
$bmp.Dispose()
$srcImg.Dispose()

Write-Host "Generated true 48x48 favicon.ico successfully!"
