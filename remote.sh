PROJECT=${PWD##*/}.git
URL=https://github.com/garmas01/$PROJECT
sed -i "/last update/d" README.md
echo "last update: $(date)" >> README.md
rm -rf .git
git init
git add .
git config --global user.name "garmas"
git config --global user.email "garmas01@gmail.com"
git config --global core.excludesFile ~/.gitignore
git commit -m "$(date)"
git remote rm origin
git remote add origin $URL
git remote -v
git push -u origin --all
git push -u origin --tags

