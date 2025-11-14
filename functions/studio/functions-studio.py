# We want to COMPLETELY reverse a list by flipping the order of the entries AND flipping the order of characters in each element.

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

# 2) The 'split' method does not work on numbers, but we want the function to return a number with all the digits reversed (e.g. 1234 converts to 4321 and NOT the string "4321")
# a) Add an if statement to your reverse_characters function to check the typeof the parameter.
# b - d) If type is ‘string’, return the reversed string as before. If type is ‘number’, convert the parameter to a string, reverse the characters, then convert it back into a number. Return the reversed number.
# e) Be sure to print the result returned by the function to verify that your code works for both strings and numbers. Do this before moving on to the next steps.

def reverse_characters(value):
    # a) Check if the type is a string
    if isinstance(value, str):
        # b) If type is 'string', return the reversed string
        return value[::-1]
    
    # c) Check if the type is a number (integer or float)
    elif isinstance(value, (int, float)):
        # d) Convert the number to a string
        num_as_string = str(value)
        
        # d) Reverse the string
        reversed_string = num_as_string[::-1]
        
        # d) Convert the reversed string back to the original number type
        #    and return the reversed number.
        #    type(value) will be int if it was an int, or float if it was a float.
        return type(value)(reversed_string)
    
    else:
        return value

# e) Verify that the code works for both strings and numbers
print("--- Testing reverse_characters ---")

# Test 1: Simple string (from your prompt)
print(f"'apple' becomes: {reverse_characters('apple')}")

# Test 2: String with numbers (from your prompt)
print(f"'LC101' becomes: {reverse_characters('LC101')}")

# Test 3: Integer (from your prompt)
print(f"8675309 becomes: {reverse_characters(8675309)}")

# Test 4: Another integer
print(f"1234 becomes: {reverse_characters(1234)}")

# 3) Create a new function with one parameter, which is the list we want to change. The function should:
# a) Define and initialize an empty list.

def reverse_list(original_list):
    # a) Define and initialize an empty list.
    new_list = []

# b) Loop through the old list.    

def reverse_list(original_list):
    new_list = []
    
    # b) Loop through the old list.
    for item in original_list:
        pass # Placeholder for steps c and d

# c) For each element in the old list, call reverse_characters to flip the characters or digits.

def reverse_list(original_list):
    new_list = []
    
    for item in original_list:
        # c) For each element, call reverse_characters
        reversed_item = reverse_characters(item)

# d) Add the reversed string (or number) to the list defined in part ‘a’.

def reverse_list(original_list):
    new_list = []
    
    for item in original_list:
        reversed_item = reverse_characters(item)
        
        # d) Add the reversed string (or number) to the list
        new_list.append(reversed_item)

# e) Return the final, reversed list.

def reverse_list(original_list):
    new_list = []
    
    for item in original_list:
        reversed_item = reverse_characters(item)
        new_list.append(reversed_item)
        
    # e) Return the final, reversed list.
    return new_list
# f) Be sure to print the results from each test case in order to verify your code.


list_test1 = ['apple', 'potato', 'Capitalized Words']
list_test2 = [123, 8897, 42, 1168, 8675309]
list_test3 = ['hello', 'world', 123, 'orange']

# --- Test Cases ---
list_test1 = ['apple', 'potato', 'Capitalized Words']
list_test2 = [123, 8897, 42, 1168, 8675309]
list_test3 = ['hello', 'world', 123, 'orange']

# f) Print the results to verify
print("--- Running Test Cases ---")
print(f"Original: {list_test1}")
print(f"Reversed: {reverse_list(list_test1)}")
print()
print(f"Original: {list_test2}")
print(f"Reversed: {reverse_list(list_test2)}")
print()
print(f"Original: {list_test3}")
print(f"Reversed: {reverse_list(list_test3)}")