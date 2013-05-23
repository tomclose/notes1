---
title: CSS
---


Last week we looked at HTML, and saw how this was used to mark up the information in a webpage. Right now, your HTML pages don't look very good, as you haven't given any styling information. The way to do this is using CSS (Cascading Style Sheets).

There are a few ways to include CSS in an HTML file: the proper way is to link to a separate `.css` file in the `<head>`. This allows web browsers to download the `.css` file once for the entire site, which speeds up loading times. You can also put the css inline, or write it directly into the `<head>`. For simplicity we'll do this:

Make your html header look like this:

    <head>
      <title>Some title</title>
      <style>
        h1 { color: red; }
      </style>
    </head>

The bit inside the `<style>` tags is CSS. The `h1` bit specifies the tag that will be styled. The bit inside the `{ ... }` specifies the styles that will be applied. Here we change the colour of the `h1` text red.

If you save the changes to the html file, then open (or refresh) the page in your browser you should see the changes. By opening the developer tools, and hovering over the `h1` you should be able to see your css rule at the side.

Try out the following:

    p { color: blue; }
    div { background-color: pink; }
    div#lists { background-color: green; }

The `div#lists` bit selects only the div with the lists id: `<div id="lists">`.

If anything, these changes will have made your site look a lot worse - but I hope you get the idea!

Now go back to the command line, commit these changes, and have a look at the repo:

    $ git add .
    $ git commit -m "Added some css"
    $ gitk --all