#!/usr/bin/env python3

#Below is the function called modify string, which accepts a variable
#That will be called origional in the scope of the function. Anything
#Indented with 4 spaces under the function definition is in the scope

def modify_string(original):
    original += " that has been modified."
    #Only the local copy of this string has been modified

def modify_string_return(original):
    original += " that has been modified."
    # However, we can return our local copy to the caller. The function
    # ends as soon as the return statement is used, regardless of where it
    # is in the function
    return original

test_string = "This is a test string."

modify_string(test_string)
print(test_string)

test_string = modify_string_return(test_string)
print(test_string)

