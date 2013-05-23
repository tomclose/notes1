---
title: Pusing code to Github
---


Github is a site which will host a git repo online for you, making it easy to collaborate with others. We'll now put the first website online.

Go to github, login, and click "Create New Repo" in the top left hand corner. Follow the instructions, calling it something like `first_site`. You'll get to a page when it'll describe how to get your code online. You want to follow the instructions for "Pushing an existing repository to github". It's probably best to use the http option, instead of ssh. You should end up doing something like:

    $ git remote add origin https://github.com/yourusername/first_site.git
    $ git push -u origin master

You should now be prompted to add your github username and password. If all goes well, when you go to github you should see the `first_site` folder containing your html file.