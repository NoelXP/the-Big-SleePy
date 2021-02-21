#!/usr/bin/env python3

#Program that will ask the user input number of ints,
#Stores them in a collection, and then demonstrate how collection is used
#with various control structures

import sys #Used for the sys.exit function

target_int=raw_input("How many integers?")

#target_int contains a string representation of whatever is typed.
#We need to try and convert that to an integer but
#be ready to deal with error if its not, else the program will crash

try:
    target_int=int(target_int)
except ValueError:
    sys.exit("You must enter an integer")

ints=list()

count=0

#Keep asking for integer until we have the required number
while count < target_int:
    new_int=raw_input("Please enter integer {0}:".format(count+1))
    isint=False
    try:
        new_int=int(new_int)

    except:
        print("You must enter an integer")

    #Only carry on if we have an integer. If not loop again
    
    if isint == True:
        #Add the integer to the collection
        ints.append(new_int)
        #increment the count by 1
        count += 1

print("Using a for loop")
for value in ints:
    print(str(value))

print("Using a while loop")
total = len(ints)
count = 0
while count < total:
    print(str(ints[count]))
    count += 1

