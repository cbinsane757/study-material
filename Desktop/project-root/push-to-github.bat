@echo off
echo === Setting Git to ignore LF/CRLF conversion warnings ===
git config core.autocrlf true

echo === Adding all files ===
git add .

echo === Committing changes ===
git commit -m "Update site"

echo === Renaming branch to main (if not already) ===
git branch -M main

echo === Pushing to GitHub ===
git push -u origin main

echo === Done! Your site should be live in a few seconds ===
pause
