##This project will finalize the 1D Computing Basics course. Please read the following carefully. Only complete submissions will be considered.

## How to get graded:

Solve the challenge and send your solution to dschib@berkeley.edu

## Prerequisites

* Create a GitHub account (unless you have one already)
* Create a new repository for this project
* On the Linux machine you will use for this project install (or check if they are installed) the following software packages:
    * Make
    * Darkhttpd: Download it from [here](https://unix4lyfe.org/darkhttpd/). This provides a minimal
       http server that you can use to test your website on your local computer.
    * recode
    * tar
* Download and unpack the tar ball website.tar.gz from the D1 GitHub repository

##The Challenge

Create a simple static website that displays a table with three (3) columns. Each cell will show a picture. You find the pictures in the folder named images within the website folder.
You do not need to know any html for this project. A ready made index.html is in the website folder. There you find all elements and the first pictures included already.

There are more than 150 images, way too many to include them one by one in the website. You will have to write a Shell script that writes a new index.html for you. On the way you will have to deal with pictures that don't show up correctly on the website. 

##Tasks

* Create a README.md in your repository where you document your project, answer challenge questions, and let visitors know how to use your code.
* Create a working branch (other than Master) that you use to push your ongoing work to. Commit and push often to not lose work.
* When you are done open a Pull Request from your working branch to your Master branch, do not yet merge it.
* Serve the sample website (index.html) using darkhttp and port 12345 and display it in your browser.
* Exchange one of the images in the sample index.html and see if you can display that in the browser. Did you need to restart the server to do that? Why or why not? 
* How can you look up the process ID of your server? Document the command line used and the output.
* Write a Shell script that creates a new index.html which includes all images, using HERE-docs where applicable. Make sure that all images can be displayed correctly. HINT: recode may help.
* Show your understanding of Shell control structures like loops and conditions.
* Once you are ready to submit your work post a link to your repo as a submission here.
* When you have received feedback, fix things that are broken and then merge your working branch to Master.

###Rules:

* Use only Shell script (no Python etc).
* Comment your code!
* Document command lines used and their output in your project REAMDE.md.
* Make sure your README.md is in proper Markdown formatting so others can read it.

For questions reach out to dschib@berkeley.edu or open a ticket (issue) in the 1D Computing Basics GitHub repo

