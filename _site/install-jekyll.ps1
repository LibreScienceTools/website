# LibreScienceTool Website - Jekyll Installation Script
# This script installs Ruby and Jekyll for Windows

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "LibreScienceTool Jekyll Installation" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Check if running as Administrator
$isAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

if (-not $isAdmin) {
    Write-Host "Warning: Not running as Administrator. Installation may fail." -ForegroundColor Yellow
    Write-Host "Right-click PowerShell and select 'Run as Administrator' for best results." -ForegroundColor Yellow
    Write-Host ""
}

# Check if Chocolatey is installed
Write-Host "Checking for Chocolatey package manager..." -ForegroundColor Yellow
$chocoInstalled = Get-Command choco -ErrorAction SilentlyContinue

if (-not $chocoInstalled) {
    Write-Host "Chocolatey not found. Installing Chocolatey..." -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Please follow the installation prompts..." -ForegroundColor Cyan

    Set-ExecutionPolicy Bypass -Scope Process -Force
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
    try {
        Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
        Write-Host "Chocolatey installed successfully!" -ForegroundColor Green
    } catch {
        Write-Host "Failed to install Chocolatey automatically." -ForegroundColor Red
        Write-Host "Please install manually from: https://chocolatey.org/install" -ForegroundColor Yellow
        Write-Host ""
        Write-Host "Or install Ruby manually from: https://rubyinstaller.org/downloads/" -ForegroundColor Yellow
        exit 1
    }

    # Refresh environment
    $env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
}

# Check if Ruby is installed
Write-Host ""
Write-Host "Checking for Ruby installation..." -ForegroundColor Yellow
$rubyInstalled = Get-Command ruby -ErrorAction SilentlyContinue

if (-not $rubyInstalled) {
    Write-Host "Ruby not found. Installing Ruby with DevKit..." -ForegroundColor Yellow
    choco install ruby -y

    # Refresh environment
    $env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")

    Write-Host "Ruby installed successfully!" -ForegroundColor Green
} else {
    $rubyVersion = ruby --version
    Write-Host "Ruby already installed: $rubyVersion" -ForegroundColor Green
}

# Install Jekyll and Bundler
Write-Host ""
Write-Host "Installing Jekyll and Bundler..." -ForegroundColor Yellow

try {
    gem install jekyll bundler
    Write-Host "Jekyll and Bundler installed successfully!" -ForegroundColor Green
} catch {
    Write-Host "Failed to install Jekyll. Please try manually:" -ForegroundColor Red
    Write-Host "  gem install jekyll bundler" -ForegroundColor Yellow
    exit 1
}

# Verify installation
Write-Host ""
Write-Host "Verifying installation..." -ForegroundColor Yellow
$jekyllVersion = jekyll --version
Write-Host "Jekyll version: $jekyllVersion" -ForegroundColor Green

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Installation Complete!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Cyan
Write-Host "1. Close this PowerShell window" -ForegroundColor White
Write-Host "2. Open a new PowerShell window (to load new PATH)" -ForegroundColor White
Write-Host "3. Run: .\start-preview.ps1" -ForegroundColor White
Write-Host ""
Write-Host "Or run manually:" -ForegroundColor Cyan
Write-Host "  cd '$PSScriptRoot'" -ForegroundColor White
Write-Host "  jekyll serve" -ForegroundColor White
Write-Host ""

Read-Host "Press Enter to exit"
