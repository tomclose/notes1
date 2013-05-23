---
title:  "Intro to Git"
---

Git is a version control system. It allows you to keep the entire history of your code, and makes it easy to share and collaborate with others.

We will enable our new folder to work with git:

    $ git init

To see what this has done do:

    $ ls -a

The `-a` is a flag which tells the `ls` command to show hidden files and folders. You should see a folder called `.git` in the results. Move into this folder, and have a look around:

    $ cd .git
    $ ls

All the data to allow git to version control your code will be stored inside this hidden folder. If you ever want to 'un-version-control' your code all you have to do is delete this folder.

Apart from this hidden git folder, the first_site folder currently empty. We'll add the html file you created last week:

    $ mv ../first_html_page.html .

`mv` is for move. The line above assumes that your homework is stored in the directory above - just like `cd ..` moves up a directory, `..` is used to specify the directory above in a file path. The `.` refers to the current directory and tells `mv` where to move the file to.

To see what git thinks about this do 

    $ git status

It should tell you that you have an 'untracked file'.

We'll now add this file to the git repository:

    $ git add .
    $ git commit -m "Imported first_html_page"

Adding to a git repo is a two stage process, but most of the time we will perform these two steps together. The `add .` tells git to add everything in the current folder (`.` = current folder, just like in `mv`) into the local index. The `git commit` adds everything in the local index into the repository.

You can see your commit by doing 

    $ git log

or you can get a nice diagram showing your repo by doing

    $ gitk --all