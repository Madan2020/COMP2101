#!/bin/bash
#
# this script displays some host identification information for a simple Linux machine
#
# Sample output:
#   Hostname        : hostname
#   LAN Address     : 192.168.2.2
#   LAN Hostname    : host-name-from-hosts-file
#   External IP     : 1.2.3.4
#   External Name   : some.name.from.our.isp

# Task 1: Clean up this script by moving the commands that generate the output to separate lines
#         that put each command's output into variables. Once you have that done, Use those variables
#         in the output section at the end of the script. If the commands included in this script
#         don't make sense to you, feel free to create your own commands to find your ip addresses,
#         host names, etc.

# Task 2: Add variables for the default router's name and IP address.
#         Add a name for the router's IP address to your /etc/hosts file.
#         The router's name and address must be obtained by dynamically
#         finding the router IP address from the route table, and looking
#         up the router's hostname using its IP address, not by just
#         printing out literal text.
# sample of desired output:
#   Router Address  : 192.168.2.1
#   Router Hostname : router-name-from-hosts-file

# we use the hostname command to get our system name
# the LAN name is looked up using the LAN address in case it is different from the system name
# finding external information relies on curl being installed and relies on live internet connection
# awk is used to extract only the data we want displayed from the commands which produce extra data
# this command is ugly done this way, so generating the output data into variables is recommended to make the script more readable.
# e.g.
#   interface_name=$(ip a |awk '/: e/{gsub(/:/,"");print $2}')

MyHost=$(hostname)

interface=$(ip a |awk '/: e/{gsub(/:/,"");print $2}')

LAN_Address=$(ip a s $interface |awk '/inet /{gsub(/\/.*/,"");print $2}')

LAN_Hostname=$(getent hosts $LAN_Address| awk '{print $2}')

External_IP=$(curl -s icanhazip.com)

Router_address=$(ip route | grep 'default' | awk '{ print $3}')

Router_name=$(getent hosts $Router_address| awk '{print $2}')

Network_Address=$(route -n | awk '/255.255.255.0/''{print $1}')

Network_Name=$(getent networks $Network_Address| awk '{print $1}')

cat <<EOF

Hostname      : $MyHost

LAN IP        : $LAN_Address

LAN Hostname  : $LAN_Hostname

External IP   : $External_IP

Router address: $Router_address

Router Name   : $Router_name

Network IP    : $Network_Address

Network NAME  : $Network_Name

EOF

#########Comments for the lab are as bellow#########

#here we are using $(hostname). We can also use hostnamectl command. Both commands can either set or show the current host, domain or node name of the system/machine.
#here we are using interface variable to store interface of host system.
#here we are using LAN_Address variable to cache ip address of a machine.
#here we are storing hostname in LAN_Hostname variable.
#here using External_IP to store public ip address.
#here cat command is helping us to concatenate files and redirect output in terminal or files.
#here cat <<EOF assigns multi-line string to a shell variable.
#here EOF at ending id end-of-file, indicate the end of a file of data.
