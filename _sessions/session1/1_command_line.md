---
title:  "Intro to the command line"
---


If you are using a mac, open Terminal.app. If you are on windows, as part of the package you downloaded from  [RailsInstaller](www.railsinstaller.org) you should now have a program called `gitbash`. Open that!

These terminals are a way to interact with your computer programmatically. If you are doing any software development you will need to get to grips with using the terminal, as many of the programmes you will use will be run from the terminal, instead of by clicking an icon.

The first thing you will need to get used to is moving around. Start by printing the name of the directory you are in:

    $ pwd

Then have a look at what's in that directory ( _list_ the contents):

    $ ls

To move up a directory ( _change directory_ ) do

    $ cd ..

To move back do

    $ cd name_of_the_directory

Your commandline will help you: <kbd>tab</kbd> can often be used to auto-complete names of files, the up arrow can be used to cycle through previous commands that you have typed.

You should navigate to your `coding_course` folder that you created last week, using `cd`. When you get there create a new directory (_make directory_) for your site:

    $ mkdir first_site

Note: choosing names without spaces makes command line navigation easier.

