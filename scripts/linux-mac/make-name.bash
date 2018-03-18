#!/bin/bash

# --------------------
# | variables         |
# --------------------

# directory name
directoryName=folder-name-

# array of names
nameRange="sophia jackson emma aiden olivia"

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

# iterate name over the nameRange array
# and run code inside for loop
# NOTE: name increments by 1
for name in $nameRange; do

  # create a directory
  # append index of nameRange to name of directory
  mkdir $directoryName$name

  # create files
  touch $directoryName$name/$htmlFile $directoryName$name/$cssFile

  # add text to index.html file
  echo "$htmlTemplate" >> $directoryName$name/$htmlFile

  # display message after directory, files created
  # and text added to file
  echo -e "creating $directoryName$name $htmlFile $cssFile\nadding default html template to $htmlFile\n..."

# end of for loop
done

# display done. when for loop is complete
echo done.
