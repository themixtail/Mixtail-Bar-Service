Add-Type -AssemblyName System.Drawing

$srcPath = "C:\Users\Dell\.gemini\antigravity-ide\brain\251a0e99-5386-4ad4-815b-278e641bc2de\media__1785569884707.png"
$destDir = "c:\Users\Dell\Downloads\Mixtail Design"

$srcImg = [System.Drawing.Image]::FromFile($srcPath)

$sizes = @(
    @{ name = "favicon-16x16.png"; w = 16; h = 16 },
    @{ name = "favicon-32x32.png"; w = 32; h = 32 },
    @{ name = "apple-touch-icon.png"; w = 180; h = 180 },
    @{ name = "android-chrome-192x192.png"; w = 192; h = 192 },
    @{ name = "android-chrome-512x512.png"; w = 512; h = 512 },
    @{ name = "logo-icon.png"; w = 512; h = 512 },
    @{ name = "logo-brand.png"; w = 512; h = 512 }
)

foreach ($s in $sizes) {
    $bmp = New-Object System.Drawing.Bitmap($s.w, $s.h)
    $g = [System.Drawing.Graphics]::FromImage($bmp)
    $g.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
    $g.SmoothingMode = [System.Drawing.Drawing2D.SmoothingMode]::HighQuality
    $g.PixelOffsetMode = [System.Drawing.Drawing2D.PixelOffsetMode]::HighQuality
    $g.DrawImage($srcImg, 0, 0, $s.w, $s.h)
    $g.Dispose()

    $outPath = Join-Path $destDir $s.name
    $bmp.Save($outPath, [System.Drawing.Imaging.ImageFormat]::Png)
    $bmp.Dispose()
    Write-Host "Generated $($s.name)"
}

# Also save 32x32 PNG copy as favicon.ico for broad browser compatibility
$icoSrc = Join-Path $destDir "favicon-32x32.png"
Copy-Item $icoSrc (Join-Path $destDir "favicon.ico") -Force

$srcImg.Dispose()
Write-Host "All favicons generated successfully from MIX Tail logo!"
