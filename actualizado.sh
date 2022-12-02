#! bin/bash
git pull origin main 
git add .
git commit -m "Commit $(date)"
git push -u origin main -f
