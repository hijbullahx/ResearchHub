@echo off

REM Change to the correct drive
G:

REM Navigate to your GitHub project directory
cd "G:\My Drive\Reaserch"

REM Check if the directory is a Git repository
git status >nul 2>&1
if errorlevel 1 (
    echo This is not a Git repository. Please initialize Git in this directory.
    pause
    exit /b
)

REM Ensure you're on the main branch
git checkout main >nul 2>&1

REM Stage all changes
git add .

REM Commit the changes (if there are any)
git commit -m "Auto commit" >nul 2>&1 || echo "No changes to commit."

REM Pull the latest changes to avoid conflicts
git pull origin main

REM Push the changes to GitHub
git push origin main

REM Confirm completion
echo "Process completed successfully. Changes pushed to GitHub!"

REM Pause to keep the command prompt open
pause
