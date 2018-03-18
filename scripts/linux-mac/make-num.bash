#!/bin/bash

# --------------------
# | variables         |
# --------------------

# directory name
directoryName=folder-name-

# html file name
htmlFile=index.html

# css file name
cssFile=style.css

# html template
htmlTemplate="<!DOCTYPE html>
<html lang='en'>
  <head>
    <meta charset='utf-8'>
    <title></title>
  </head>
  <body>

  </body>
</html>"
# end of htmlTemplate variable


# --------------------
# | for loop          |
# --------------------

# iterate number over the number range
# and run code inside for loop
# NOTE: number increments by 1
for number in {1..5}; do

  # create a directory
  # append number to name of directory
  mkdir $directoryName$number

  # create files
  touch $directoryName$number/$htmlFile $directoryName$number/$cssFile

  # add text to index.html file
  echo "$htmlTemplate" >> $directoryName$number/$htmlFile

  # display message after directory, files created
  # and text added to file
  echo -e "creating $directoryName$number $htmlFile $cssFile\nadding default html template to $htmlFile\n..."

# end of for loop
done

# display done. when for loop is complete
echo done.
