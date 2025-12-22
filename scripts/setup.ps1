# scripts/setup.ps1

$mirror = $env:GITHUB_MIRROR
if (-not $mirror) {
    $mirror = "https://github.com"
    Write-Host "[!] GITHUB_MIRROR not set, using default: $mirror" -ForegroundColor Yellow
}
$mirror = $mirror.TrimEnd('/')

$pyUrl = "$mirror/neoluxis/keil_library_template/refs/heads/main/scripts/project_setup.py"

Write-Host "[*] Mirror: $mirror" -ForegroundColor Cyan
Write-Host "[*] Fetching: $pyUrl" -ForegroundColor Gray

try {
    $pyContent = (Invoke-WebRequest -Uri $pyUrl -UseBasicParsing).Content
    
    python -c "$pyContent" $args
}
catch {
    Write-Error "Failed to fetch or execute the setup script. Please verify your mirror URL."
}