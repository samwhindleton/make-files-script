# Create Files and Folders With a Shell Script

## Linux, MacOS, and Windows

Create multiple directories and files, and populate files with a shell script. (Linux, MacOS, and Windows)

In this guide we'll be creating multiple directories and files, and add text to files with a shell script. You'll create and run the script. Follow the Linux and MacOS Guide if you have a Linux flavored or MacOS OS, or follow the Windows Guide if you have a Windows OS.

We'll be using a for loop to create:

* directories

* files (within the newly created directory)

* add text to files

### Resources

#### Plain Text Editors

* [BBEdit](https://www.barebones.com/products/bbedit/)

* [MS Notepad](https://en.wikipedia.org/wiki/Microsoft_Notepad)

* [Nano](https://www.nano-editor.org/)

* [Nano for Windows](https://www.nano-editor.org/dist/win32-support/)

* [Notepad++](https://notepad-plus-plus.org/)

* [Vim](https://www.vim.org/)

#### Other Resources

* [About Bash](https://www.gnu.org/software/bash/)

* [About Permissions](https://ss64.com/bash/chmod.html)

* [Bash Commands](https://ss64.com/bash/)

* [Windows CMD Commands](https://ss64.com/nt/)

---

## Linux and MacOS Guide

### Setup

1. Open Terminal

2. Create a script file `make.sh` and open it with `nano`

  ```bash
  $ nano make.sh
  ```

  Type the command and press enter

  ![terminal](/images/linux-mac/nano-make.sh-1.png)

  A new file `make.sh` will be created and opened in the `nano` editor.

  ![nano](/images/linux-mac/nano-make.sh-2.png)

  ***NOTE***: If you don't have nano installed, visit [Nano](https://www.nano-editor.org/) to download and install it.

  ***OR***

  Install from terminal:

    * MacOS

      ```bash
      $ brew update

      $ brew install nano
      ```

    * Linux(Debian/Ubuntu)

      ```bash
      $ sudo apt-get install nano
      ```

    * Linux(CentOS / RHEL)

      ```bash
      $ sudo yum install nano
      ```

### Variables

1. Create a variable for the folder name

  ```bash
  # variable name is directoryName
  # directoryName value is folder-name-
  directoryName=folder-name-
  ```

  ![variable-1](/images/linux-mac/variable-1.png)

2. Create a variable for the file names

  ```bash
  # variable name is htmlFile
  # htmlFile value is index.html
  htmlFile=index.html

  # variable name is cssFile
  # cssFile value is style.css
  cssFile=style.css
  ```

  ![variable-2](/images/linux-mac/variable-2.png)

3. Create a variable for the text that will be added to a file

  ```bash
  # variable name is htmlTemplate
  # htmlTemplate has a multi-line value that includes spaces
  # default html template
  htmlTemplate="<!DOCTYPE html>
  <html lang='en'>
    <head>
      <meta charset='utf-8'>
      <title></title>
    </head>
    <body>

    </body>
  </html>"
  ```

  ![variable-3](/images/linux-mac/variable-3.png)

### For Loop

1. Create an empty for loop that iterates `number` thru a number range of 1 to 5 `{1..5}` and displays `done.` when the for loop is complete

  ```bash
  # number range for loop
  # iterates thru a range of numbers
  for number in {1..5}; do

  # end of for loop
  done

  # display done. when for loop is complete
  echo done.
  ```

  ![for-loop-1](/images/linux-mac/for-loop-1.png)

2. Create a directory with the name of the variable `directoryName` and the value of `number`

  ```bash
  mkdir $directoryName$number
  ```

  ![for-loop-2](/images/linux-mac/for-loop-2.png)

3. Create files inside the directory `directoryName + number` with the name of the variable `htmlFile` and `cssFile`

  ```bash
  touch $directoryName$number/$htmlFile $directoryName$number/$cssFile
  ```

  ![for-loop-3](/images/linux-mac/for-loop-3.png)

4. Add text from the variable htmlTemplate to the file `html.index` that is located in the directory `directoryName + number`

  ```bash
  echo "$htmlTemplate" >> $directoryName$number/$htmlFile
  ```

  ![for-loop-4](/images/linux-mac/for-loop-4.png)

5. Save the script by pressing `ctrl + O` (control + letter O, not zero) then press `enter`.

  ![save](/images/linux-mac/save.png)

  Then exit nano by pressing `ctrl + X`.

  ![exit](/images/linux-mac/exit.png)

### Run The Script

1. In order to run `make.sh` we need to change its file permission to read, write, execute. Read more about Permissions [here](https://www.linux.com/learn/understanding-linux-file-permissions).

  ```bash
  $ chmod 700 make.sh
  ```

  ![chmod700](/images/linux-mac/chmod700.png)

2. Run the script with command `./make.sh`

  ```bash
  $ ./make.sh
  ```

  ![run](/images/linux-mac/run.png)

3. Revert `make.sh` file permission to its default value of read, write.

  ```bash
  $ chmod 644 make.sh
  ```

  ![chmod644](/images/linux-mac/chmod644.png)

### View Created Files and Folders

1. View newly created files and folders by listing all subdirectories with the command `ls *`

  ```bash
  $ ls *
  ```

  ![finder](/images/linux-mac/subdirectories.png)

2. Or view created files and folders in finder with the command `open .`

  ```bash
  $ open .
  ```

  ![finder](/images/linux-mac/finder.png)

---

## Windows Guide

### Setup

1. Open Command Prompt.

2. Create a script file `make.bat` and open it with `nano`.

  ```
  nano make.bat
  ```

  Type the command and press enter.

  A new file `make.bat` will be created and opened in the `nano` editor.

  ***NOTE***: If you don't have nano installed, visit [Nano](https://www.nano-editor.org/) to download and install it.

### Variables

1. Create a variable for the folder name.

  ```
  set directoryName=folder-name-
  ```

2. Create a variable for the file names.

  ```
  set htmlFile=index.html
  set cssFile=style.css
  ```

3. Create a variable for the text that will be added to a file.

  ```
  set htmlTemplate=^<!DOCTYPE html^>^

  ^<html lang="en"^>^

    ^<head^>^

      ^<meta charset="utf-8"^>^

      ^<title^>^</title^>^

    ^</head^>^

    ^<body^>^

    ^</body^>^

  ^</html^>
  ```

### For Loop

1. Create an empty for loop that iterates `%%A` thru a number range of 1 to 5 `(1, 1, 5)` and displays `done.` when the for loop is complete.

  ```
  for /l %%A in (1, 1, 5) do (

  )

  echo done.
  ```

2. Create a directory with the name of the variable `directoryName` and the value of `%%A`.

  ```
  md %directoryName%%%A
  ```

3. Create files inside the directory `directoryName + %%A` with the name of the variable `htmlFile` and `cssFile`.

  ```
  type nul > %directoryName%%%A\%htmlFile% && type nul > %directoryName%%%A\%cssFile%
  ```

4. Add text from the variable htmlTemplate to the file `html.index` that is located in the directory `directoryName + %%A`.

  ```
  echo !htmlTemplate! > %directoryName%%%A\%htmlFile%
  ```

5. Save the script by pressing `ctrl + O` (ctrl + letter O, not zero) then press `enter`.

  Then exit nano by pressing `ctrl + X`.

### Run The Script

1. Run the script with command `make` or `make.bat`

  ```
  make
  ```

  **OR**

  ```
  make.bat
  ```

### View Created Files and Folders

1. View newly created files and folders by listing all subdirectories with the command `dir \S`

  ```
  dir \S
  ```

2. Or view created files and folders in Windows Explorer with the command `start .`

  ```
  start .
  ```

---
