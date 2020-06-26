#!/bin/bash
#
# this script generates a report of the files on the system that have the setuid permission bit turned on
# it is for the lab1 exercise
# it uses the find command to find files of the right type and with the right permissions, and an error redirect to
# /dev/null so we do not get errors for inaccessible directories and files
# the identified files are sorted by their owner

# Task 1 for the exercise is to modify it to also find and display the setgid files in a second listing
# The second listing should display after the setuid file list, and be formatted similar to the
# setuid file list including having a title
# use the find command to find files of the right type and with the right permissions, and an error redirect to
# /dev/null so we do not get errors for inaccessible directories and files
# the identified files should be sorted by their group

# Task 2 for the exercise is to modify it to also display the 10 largest regular files in the system, sorted by their sizes
# The listing should only have the file name, owner, and size in MBytes and be displayed after the listings of
# setuid and setgid files and should have its own title
# use the find command to generate the list of files with their sizes, with an error redirect to /dev/null
# use cut or awk to display only the output desired

# echo command in linux scripting displays/print the written text inside the duoble quotation. It is used to display a line of a text or a string on standard output which is passed as a arguments.
# 
echo "Setuid files:"
echo "============="
find / -type f -executable -perm -4000 -ls 2>/dev/null | sort -k 3
echo ""

# here in task 1 the script is modified in such a way that it  finds and display the setgid files in a second listing.

# Displaying setgid files in the system.

# echo command in linux scripting displays/print the written text inside the duoble quotation.

# here setgid is the abbreviation for "Set Group ID", it allows me to run an executable with the permissions and to change behaviour in directories.

echo "Setgid files:"
echo "=============="

# Display files with permissions set to 2000.

# here find command is used to searching the particular files.

# / gives information about our directories either home or root directory.

# 2> /dev/null redirects to /dev/null if any error is encountered in the scripts.

# sort -k is used to sort file on basis of key.

# here "|" is called pipe. | pipe is used to combine two or more commands in linux scriping.

#echo command in linux scripting displays/print the written text which is inside the duoble quotation.

find / -type f -executable -perm -2000 -ls 2>/dev/null | sort -k 4
echo ""

# here in task 2 the script is modified in such a way that it displays ten  largest files in the system.

# here echo command in linux scripting displays/print the written text which is inside the duoble quotation.

echo "10 Largest files in the system:"
echo "============="
find / 2>/dev/null -type f -exec ls -l --block-size=M {} + | sort -rh -k 5 | head -n 10 | awk '{print $5, $3, $9}'

# here find command is used to search the specific files.

# 2> /dev/null redirects to /dev/null if error is encountered.

# here du command is used to estimate disk usages.

# / gives information about our directories either home or root directory.

# du -sh compares human readable numbers and shows total of for each argument.

# sort -rh sorts value in human readable format and reverse results.

# {} are used to summarize disk usage of each file.

# here "|" is called pipe. | pipe is used to combine two or more commands in linux scriping.

# here in linux scripting head command returns the first ten lines of each file name that is provided to it. head -n 10 displays first 10 files here.

ls -l --block-size=M / 2>/dev/null | sort -h -r | head -n 10
du --block-size=M / 2>/dev/null | sort -h -r | head -n 10
du -ha | sort -h -r | head -n 10

# find -type f -exec ls -l --block-size=M {} + | sort -rh -k 5 | head -n 10 | awk '{print $5, $3, $9}'

# here M indicates size in Mbytes.

# here awk command  manipulates and generates reports.

