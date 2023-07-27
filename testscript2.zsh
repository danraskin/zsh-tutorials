#!/bin/zsh

# sets variable 'filename' to first argument passed to script
filename=$1

# prints hostname of current system
echo "Hostname: $(hostname)"

# creates subshell and runs ls command inside of it.
# output of ls is stored in ls_output variable

ls_output=$(ls -al)

echo "Output of 'ls' command: $ls_output"

# checks if file specified by the filename variable exists
# and is a regular file (not directory). If exists, prints contents
# of the file. if not, prints error.

if [[ -f "$filename" ]]; then

  cat "$filename"

else
  
  echo "Error: File not found"

fi

# this line prints the current working directory
echo "current working directory: $(pwd)"

echo "Home directory: $HOME"

# this line reads input from user and stores it in 'input' variable
echo -n "Enter your name: "
read input

#prints the value of the 'input variable'
echo "Your name is: $input"
