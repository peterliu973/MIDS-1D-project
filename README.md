
## Introduction

The project consists of a shell script "start.sh".  This script takes 1 parameter <docbase> which contains the directory "images/*" which contains all the graphical images.  Once confirmed, the script will produce an index.html, and either start or re-start the web server darkhttpd on port 12345.

The script assumes the binary for darkhttpd is in <code>~/darkhttpd/darkhttpd</code>.  If it is installed in a different place, simply modify the variable DARKHTTPD on line 3 of start.sh


## Answers to Tasks

* Create a README.md in your repository where you document your project, answer challenge questions, and let visitors know how to use your code. (This readme file)

* Create a working branch (other than Master) that you use to push your ongoing work to. Commit and push often to not lose work.  (The branch name is feature/script-and-readme)

* When you are done open a Pull Request from your working branch to your Master branch, do not yet merge it.
(PR created)

* Serve the sample website (index.html) using darkhttp and port 12345 and display it in your browser.
(start.sh does this)

* Exchange one of the images in the sample index.html and see if you can display that in the browser. Did you need to restart the server to do that? Why or why not? 
(Will need to re-run start.sh to regenerate index.html if the content of the images/* changes.  The web server serves a static index.html file which hard code the filename / content of images/*)

* How can you look up the process ID of your server? Document the command line used and the output.
(start.sh line 22 looks up the PID and set the variable pid to the number: <code>pid=`ps -elf | grep darkhttpd | grep ${PORT} | awk '{print $4}'`</code>)
* Write a Shell script that creates a new index.html which includes all images, using HERE-docs where applicable. Make sure that all images can be displayed correctly. HINT: recode may help.
(recode was helpful for encoding the UTF-8 encoding to HTML encoding for some file)

* Show your understanding of Shell control structures like loops and conditions.
(start.sh used loop and counter to generate the structure of the HTML table)

* Once you are ready to submit your work post a link to your repo as a submission here.
([MIDS-1D-project](https://github.com/peterliu973/MIDS-1D-project))

* When you have received feedback, fix things that are broken and then merge your working branch to Master.

Requires recode to be installed.  sudo apt install recode