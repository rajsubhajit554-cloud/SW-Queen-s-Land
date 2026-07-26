@echo off
title Git Repository Updater
echo =========================================
echo       SW Queen's Land Git Updater
echo =========================================
echo.

echo Checking repository status...
git status
echo.

echo Staging all changes...
git add .
echo.

set /p commit_msg="Enter commit message (Press ENTER for 'Update website content'): "
if "%commit_msg%"=="" set commit_msg=Update website content

echo.
echo Committing changes...
git commit -m "%commit_msg%"

echo.
echo Pushing to GitHub repository...
git push origin main

echo.
echo =========================================
echo        Git Update Completed Successfully!
echo =========================================
echo.
pause
