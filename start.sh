#!/bin/sh

# change location of darkhttpd if necessary
DARKHTTPD=~/darkhttpd/darkhttpd

# validate parameter
if [ $# -ne 1 -o ! -f "${1}/index.html" ]
then
    echo "Usage: $0 <docbase>"
    exit
fi

DOCBASE=$1
HTML=${DOCBASE}/index.html
PORT=12345

# last chance for user to abort
echo "This will over write ${HTML} and restart the web server on port ${PORT}."
read -p "Continue (y/n)?" CONT
if [ "$CONT" != "y" ]
then
    exit
fi

# stop existing server
pid=`ps -elf | grep darkhttpd | grep ${PORT} | awk '{print $4}'`
echo "stopping website process ID: ${pid}"
kill -9 ${pid}

# fragment of HTML
HEADER='
<!doctype html>
<html>
  <head>
    <title>This is the title of the webpage!</title>
  </head>
  <body>
   <center>
    <h1>MATH COLLECTION</h1>
   </center>

  <table border="5" bordercolor="red" align="center">
    <tr>
        <th colspan="3">PICTURES</th> 
    </tr>
'
FOOTER='
  </table>
  </body>
</html>
'

echo ${HEADER} > ${HTML}

# i is a counter that will determine if a new column is required
i=0

# iterate thru all images and create an extry in the output
for f in ${DOCBASE}/images/*
do
    if [ ${i} = 0 ]
    then
        echo '<tr>' >> ${HTML}
    fi

    # encode in html if necessary
    img=`basename "${f}" | recode UTF8..html`
    echo '<td><img src="images/'`basename "${img}"`'" alt="" border=3 height=100 width=300></td>' >> ${HTML}
    i=$((i+1))
    if [ ${i} = 0 ]
    then
        echo '</tr>' >> ${HTML}
    fi
    i=$((i%3))
done

echo ${FOOTER} >> ${HTML}

# start web server with newly generated index.html
nohup ${DARKHTTPD} ${DOCBASE} --port ${PORT} >/dev/null 2>&1&