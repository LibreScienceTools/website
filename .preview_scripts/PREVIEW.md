# Website Preview Guide

This guide will help you preview the LibreScienceTool website locally before deploying to GitHub Pages.

## Quick Start

### Option 1: Full Jekyll Preview (Recommended)

This option gives you the full website experience with all Jekyll features (shared header/footer, etc.).

**First time setup:**

1. Right-click on PowerShell and select "Run as Administrator"
2. Navigate to the website directory:
   ```powershell
   cd C:\Users\matth\Documents\GitHub\website
   ```
3. Allow script execution:
   ```powershell
   Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
   ```
4. Run the installation script:
   ```powershell
   .\install-jekyll.ps1
   ```
5. Close PowerShell and open a new one (to refresh PATH)

**Every time you want to preview:**

1. Open PowerShell (doesn't need to be Administrator)
2. Navigate to the website directory:
   ```powershell
   cd C:\Users\matth\Documents\GitHub\website
   ```
3. Run:
   ```powershell
   .\start-preview.ps1
   ```
4. Open your browser to: **http://localhost:4000**
5. Press `Ctrl+C` to stop the server when done

### Option 2: Simple Python Preview (No Installation)

This is a quick preview but won't show Jekyll features (navigation/footer won't appear).

1. Double-click `start-preview-simple.bat`
2. Open your browser to: **http://localhost:8000**
3. Press `Ctrl+C` to stop the server when done

## Troubleshooting

### "cannot be loaded because running scripts is disabled"

Run this in PowerShell (as Administrator):
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

### Jekyll command not found after installation

1. Close all PowerShell/Command Prompt windows
2. Open a new PowerShell window
3. Try again

### Manual Jekyll Installation

If the automatic installation fails:

1. Download Ruby+Devkit from: https://rubyinstaller.org/downloads/
   - Choose version 3.2.x or later
   - Run the installer
   - Check "Add Ruby to PATH"
   - Complete the MSYS2 installation when prompted

2. Open a new Command Prompt or PowerShell and run:
   ```bash
   gem install jekyll bundler
   ```

3. Navigate to website directory and run:
   ```bash
   jekyll serve
   ```

## What's the Difference?

| Feature | Jekyll Preview | Simple Python |
|---------|---------------|---------------|
| Navigation bar | ✅ Yes | ❌ No |
| Footer | ✅ Yes | ❌ No |
| Shared layouts | ✅ Yes | ❌ No |
| Auto-reload on changes | ✅ Yes | ❌ No |
| Installation required | Yes (one-time) | No |
| Matches GitHub Pages | ✅ Yes | ❌ No |

**Recommendation:** Use Jekyll preview for the best experience.

## Next Steps

Once you're happy with your changes:

1. Commit your changes:
   ```bash
   git add .
   git commit -m "Update website content"
   ```

2. Push to GitHub:
   ```bash
   git push
   ```

3. Enable GitHub Pages:
   - Go to your repository settings
   - Navigate to "Pages"
   - Select your branch (usually `main`)
   - Save

Your site will be live at: `https://yourusername.github.io/website/`
