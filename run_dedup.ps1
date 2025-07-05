# Set script to exit immediately if something fails
$ErrorActionPreference = "Stop"

# Go to the project folder
Set-Location -Path "C:\dev\PERSONAL\photo-dedup"

# Activate virtual environment
. .\.venv\Scripts\Activate.ps1

# Optional: confirm venv is active
Write-Host "Virtual environment activated."

# Run the dedupe script
Write-Host "Running photo_dedupe.py..."
python photo_dedupe.py

# Optional: wait so user sees the output before window closes
Write-Host "`nDone. Press Enter to exit."
Read-Host
