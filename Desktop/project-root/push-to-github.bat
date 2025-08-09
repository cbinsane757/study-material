@echo off
echo === Setting Git to ignore LF/CRLF conversion warnings ===
git config core.autocrlf true

echo === Pulling latest changes from GitHub ===
git pull origin main --rebase

echo === Adding all files ===
git add .

echo === Committing changes ===
git commit -m "Update site"

echo === Renaming branch to main (if not already) ===
git branch -M main

echo === Pushing to GitHub ===
git push origin main

echo === Done! Your site should be live in a few seconds ===
pause
