@echo off
echo === Setting Git to ignore LF/CRLF conversion warnings ===
git config core.autocrlf true

echo === Staging all changes ===
git add .

echo === Committing changes ===
git commit -m "Update site" || echo No changes to commit.

echo === Ensuring branch is 'main' ===
git branch -M main

echo === Force pushing changes to GitHub (OVERWRITES remote) ===
git push origin main --force

echo === Done! Your site should be live in a few seconds ===
pause
