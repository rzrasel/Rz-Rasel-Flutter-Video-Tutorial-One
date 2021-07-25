# Rz Rasel - Flutter Tutorial - One
Rz Rasel - Flutter Tutorial

### GIT Command
```git_command
git init
git remote add origin https://github.com/rzrasel/Rz-Rasel-Flutter-Video-Tutorial-One.git
git remote -v
git fetch && git checkout master
git add .
git commit -m "Add Readme & Git Commit File"
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

-- git filter-repo --to-subdirectory-filter "$REPO_NAME"
-- git reset --hard
-- git reflog expire --expire=now --all
-- git gc --prune=now
```

Navigate to your repository:
```
cd my_repository/
git checkout master
git filter-branch --force --tree-filter 'rm -f path/to/big_file.mpg' HEAD
git reflog expire --expire=now --all && git gc --prune=now --aggressive
git push --force origin master
```

Tutorial List:
* Video Tutorial: []() Source Code: [Navigate To Another Screen One](https://github.com/rzrasel/Rz-Rasel-Flutter-Tutorial-One/tree/Flutter-Tutorial-Navigate-To-Another-Screen-One)
* Video Tutorial: []() Source Code: [Portfolio UI Design One](https://github.com/rzrasel/Rz-Rasel-Flutter-Tutorial-One/tree/Flutter-Tutorial-Portfolio-UI-Design-One) - On Queue
* Video Tutorial: []() Source Code: [Splash Screen One](https://github.com/rzrasel/Flutter-Tutorial-Rz-Rasel/tree/Flutter-Tutorial-Splash-Screen-One)
* Video Tutorial: []() Source Code: [WebView One](https://github.com/rzrasel/Rz-Rasel-Flutter-Tutorial-One/tree/Flutter-Tutorial-WebView-One) - On Next


On Going
* [Search Bar One](https://github.com/rzrasel/Rz-Rasel-Flutter-Tutorial-One/tree/Flutter-Tutorial-Search-Bar-One) - In Queue (3)
* [Plant Shop UI Design One](https://github.com/rzrasel/Rz-Rasel-Flutter-Tutorial-One/tree/Flutter-Tutorial-Plant-Shop-UI-One) (1)
* [Responsive Top Navigation Bar Web And Mobile - One](https://github.com/rzrasel/Rz-Rasel-Flutter-Tutorial-One/tree/Flutter-Tutorial-Responsive-Top-Navigation-Bar-Web-And-Mobile-One) (2)
