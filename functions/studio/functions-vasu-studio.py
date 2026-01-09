 We want to COMPLETELY reverse a list by flipping the order of the entries AND flipping the order of characters in each element.

# a) Define a 'reverse_characters' function. Give it one parameter, which will be the string to reverse.
def reverse_characters(value):
    pass

# b) Within the function, use the 'list' function to split a string into a list of individual characters

def reverse_characters(value):
    chars = list(value)     
    chars.reverse()         

# c) 'reverse' your new list.

def reverse_characters(value):
    chars = list(value)
    chars.reverse()


# d) Use 'join' to create the reversed string and return that string from the function.

def reverse_characters(value):
    chars = list(value)    
    chars.reverse()        
    reversed_string = ''.join(chars)   
    return reversed_string             

# e) Create a variable of type string to test your new function.

my_string = "Hello World"
#  # f) Use 'print(reverse_characters(my_variable_name))'; to call the function and verify that it correctly reverses the characters in the string.

print(reverse_characters(my_string))

# g) Use method chaining to reduce the lines of code within the function.

def reverse_characters(value):
    temp = list(value)
    return ''.join(temp[::-1])

