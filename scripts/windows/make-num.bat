@echo off
SETLOCAL EnableDelayedExpansion

:: --------------------
:: | variables        |
:: --------------------

set directoryName=folder-name-
set htmlFile=index.html
set cssFile=style.css
set htmlTemplate=^<!DOCTYPE html^>^

^<html lang="en"^>^

  ^<head^>^

    ^<meta charset="utf-8"^>^

    ^<title^>^</title^>^

  ^</head^>^

  ^<body^>^

  ^</body^>^

^</html^>
:: end of htmlTemplate variable


:: --------------------
:: | for loop         |
:: --------------------

:: for list of numbers in (start, step, end) do
for /l %%A in (1, 1, 5) do (
  md %directoryName%%%A
  type nul > %directoryName%%%A\%htmlFile% && type nul > %directoryName%%%A\%cssFile%
  echo !htmlTemplate! > %directoryName%%%A\%htmlFile%
  echo creating %directoryName%%%A %htmlFile% %cssFile%
  echo adding default html template to %htmlFile% && echo ...
)

echo done.
