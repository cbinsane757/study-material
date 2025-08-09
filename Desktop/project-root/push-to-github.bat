@echo off
echo === Setting Git to ignore LF/CRLF conversion warnings ===
git config core.autocrlf true

echo === Staging all changes ===
git add .

echo === Pulling latest changes from GitHub (rebase) ===
git pull origin main --rebase

echo === Committing changes ===
git commit -m "Update site"

echo === Ensuring branch is 'main' ===
git branch -M main

echo === Pushing changes to GitHub ===
git push origin main

echo === Done! Your site should be live in a few seconds ===
pause
