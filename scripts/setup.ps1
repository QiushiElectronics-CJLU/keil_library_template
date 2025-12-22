# scripts/setup.ps1
$mirror = $env:GITHUB_MIRROR
if (-not $mirror) { $mirror = "https://github.com" }
$mirror = $mirror.TrimEnd('/')

$pyUrl = "$mirror/neoluxis/keil_library_template/raw/main/scripts/project_setup.py"

Write-Host "[*] Mirror: $mirror" -ForegroundColor Cyan
try {
    $pyContent = (Invoke-WebRequest -Uri $pyUrl -UseBasicParsing).Content
    
    $pyContent | python - $args
}
catch {
    Write-Error "Failed to fetch or execute the setup script."
}