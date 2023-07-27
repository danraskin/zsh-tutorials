#!/bin/bash

# prints current date and time
echo "Current date and time: $(date)"

# makes new directory named "test"
mkdir test
cd test
echo "hello, world!" > test.txt

cat test.txt

cd ..
rm -r test
