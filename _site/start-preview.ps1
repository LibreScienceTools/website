# LibreScienceTool Website - Preview Server Starter
# This script starts the Jekyll preview server

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "LibreScienceTool Website Preview" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Check if Jekyll is installed
$jekyllInstalled = Get-Command jekyll -ErrorAction SilentlyContinue

if (-not $jekyllInstalled) {
    Write-Host "Jekyll is not installed!" -ForegroundColor Red
    Write-Host ""
    Write-Host "Please run the installation script first:" -ForegroundColor Yellow
    Write-Host "  .\install-jekyll.ps1" -ForegroundColor White
    Write-Host ""
    Write-Host "Or install manually:" -ForegroundColor Yellow
    Write-Host "  gem install jekyll bundler" -ForegroundColor White
    Write-Host ""
    Read-Host "Press Enter to exit"
    exit 1
}

# Display Jekyll version
$jekyllVersion = jekyll --version
Write-Host "Using $jekyllVersion" -ForegroundColor Green
Write-Host ""

# Navigate to script directory (where the website files are)
Set-Location $PSScriptRoot

Write-Host "Starting Jekyll preview server..." -ForegroundColor Yellow
Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  Your website will be available at:" -ForegroundColor Cyan
Write-Host ""
Write-Host "    http://localhost:4000/website/" -ForegroundColor Green
Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Press Ctrl+C to stop the server" -ForegroundColor Yellow
Write-Host ""
Write-Host "Starting in 3 seconds..." -ForegroundColor Gray
Start-Sleep -Seconds 3

# Start Jekyll server
# Access at: http://localhost:4000/website/
jekyll serve
