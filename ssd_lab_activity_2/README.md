Q1) Write a bash script (q1.sh) that takes path of a text file as a command line argument and
outputs the middle line of the text file.
-> the path of the text file is passed as command line argument,
I have used '\n' as field separator and "" as record separator,
At the END, value of NF will be number of lines processed,
So I am printing the (NF+1)/2 line.
Below are some test cases and their resulting output.
(1)
contents of the text file:

yellow color 1 
red color 2
purple color 3
black color 4
orange color 5
magenta color 6
white color 7
pink color 8
blue color 9 

OUTPUT:
orange color 5

(2)
contents of the text file:

yellow color 1 
red color 2
purple color 3
black color 4
orange color 5
magenta color 6

OUTPUT:
purple color 3

Q2)Write a bash script (q2.sh) to print names of all the shell that belongs to ‘ /usr ’.
-> I have used '/' as field separator and '\n' as record separator,
The script reads each line and if it finds $1 as usr,
It loops till it gets the last field of that record which is the shell name,
and then prints it.

for this:
/bin/bash
/usr/bin/bash
/bin/rbash
/usr/bin/rbash
/usr/bin/sh
/bin/dash
/usr/bin/dash

it gives output as:
bash
rbash
sh
dash



