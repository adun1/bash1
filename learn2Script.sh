#!/bin/bash
echo Hello World!
echo 'Hello World!'
echo "Hello World!"

#command substitution
command1=`ls | grep txt`
command2=$(ls | grep mbaa)
echo command1
echo $command1
echo command2
echo $command2

#mathematical expressions
echo $((5+3))
echo $((5-3))
echo $((5*3))
echo $((5/3))

#read and write
echo "What is your name? "
read name

#output name
echo "My name is : $name"
echo 'My name is : $name'

#write name to file
echo "My name is $name" >> scriptStandardOutput.txt
eco "My name is $name" 2>> scriptStandardError.txt
echo "My name is $name" &>> scriptToAllOutput.txt
eco "My name is $name" &>> scriptToAllOutput.txt

#PART2
#A function to return an echo statement
helloFunc(){
	echo "Hello from a function"
	echo $1
	echo $2
	echo $#
}

compFunc(){
	echo "$1"
	echo "$2"
	if [ $1 -lt $2 ]
	then
		echo "$1 < $2"
	elif [ $1 -gt $2 ]
	then
		echo "$1 > $2"
	else
		echo "$1 = $2"
	fi
}

#invoke the hello function
helloFunc "How is the weather" "fine" 

#comparison test
compFunc 1 2
compFunc 2 1
compFunc 1 1

#need to do string comparison
