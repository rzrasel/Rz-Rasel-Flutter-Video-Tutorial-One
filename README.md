# Rz Rasel - Flutter Tutorial
This tutorial we show how to integrate WebView in flutter

Flutter tutorial - WebView

[![How to display websites in Flutter | Flutter Web Browser | webview_flutter Plugin Speed Coding](https://img.youtube.com/vi/B0UAhjsMn5M/0.jpg)](https://www.youtube.com/watch?v=B0UAhjsMn5M)

### GIT Command
```git_command
git init
git remote add origin https://github.com/rzrasel/Rz-Rasel-Flutter-Video-Tutorial-One.git
git remote -v
git fetch && git checkout Flutter-Tutorial-WebView-One
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
```

### Reducing the repository size using Git
```
Navigate to your repository:
cd my_repository/
git checkout Flutter-Tutorial-WebView-One
git filter-branch --force --tree-filter 'rm -f path/to/big_file.mpg' HEAD
git reflog expire --expire=now --all && git gc --prune=now --aggressive
git push --force origin Flutter-Tutorial-WebView-One
```

[![How to display websites in Flutter | Flutter Web Browser | webview_flutter Plugin Speed Coding](https://yt-embed.herokuapp.com/embed?v=B0UAhjsMn5M)](https://www.youtube.com/watch?v=B0UAhjsMn5M "How to display websites in Flutter | Flutter Web Browser | webview_flutter Plugin Speed Coding")