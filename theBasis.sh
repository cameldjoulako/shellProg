#!/bin/sh #Yhis script will be processed by bourne shell again

#The Basis of Shell Programming

#Text Display
echo "Hello world"

#write comments
#This is a comment on one line

#debuging activation
set -x #denable debugging
echo "Hello my dear"
date
set +x #disable debugging


#Check the Shell in which you work
echo "I work with the shell:"
echo $0  #display working shell

#Indicate the program that will analyze the script
# #!/bin/sh

#Variables et assignment
name = "DJOULAKO" #Assignment of DJOULAKO into a vaviable name
echo "my name is $name" #display my name is DJOULAKO
echo $name


#Create Arrays
