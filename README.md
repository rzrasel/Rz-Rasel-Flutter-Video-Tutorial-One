# Rz Rasel - Flutter Tutorial
This tutorial we show how to make a splash screen in flutter

Flutter tutorial - Splash screen

### GIT Command
```git_command
git init
git remote add origin https://github.com/rzrasel/Rz-Rasel-Flutter-Video-Tutorial-One.git
git remote -v
git fetch && git checkout Flutter-Tutorial-Splash-Screen-One
git add .
git commit -m "Flutter tutorial - Splash screen"
git pull
git push --all
```

### Reducing the repository size using Git
```
Navigate to your repository:
cd my_repository/

Change to the branch you want to remove the big file from:
git checkout master

Use filter-branch to remove the big file:
git filter-branch --force --tree-filter 'rm -f path/to/big_file.mpg' HEAD

Instruct Git to purge the unwanted data:
git reflog expire --expire=now --all && git gc --prune=now --aggressive

Lastly, force push to the repository:
git push --force origin master

Your repository should now be below the size limit.
```
