my_string = "LaunchCode"

# a) Use string methods to remove the first three characters from the string and add them to the end.
modified_string = my_string[3:] + my_string[:3]

# Use a template literal to print the original and modified string in a descriptive phrase.
print(f"(a) Original string: {my_string} -> Modified string: {modified_string}")

# b) Modify your code to accept user input. Query the user to enter the number of letters that will be relocated.
user_input = input("Enter the number of letters to relocate (integer): ").strip()

# c) Add validation to your code to deal with user inputs that are longer than the word.
#    In such cases, default to moving 3 characters. Also, the template literal should note the error.

default_move = 3
error_note = ""

try:
    num_letters = int(user_input)

    if num_letters < 0:
        error_note = "(Invalid: negative number; defaulting to 3.)"
        num_letters = default_move
    elif num_letters > len(my_string):
        error_note = "(Invalid: number longer than word; defaulting to 3.)"
        num_letters = default_move

except ValueError:
    # non-integer input
    error_note = "(Invalid input; not an integer; defaulting to 3.)"
    num_letters = default_move

# Move these two lines OUTSIDE the try/except so they always execute
modified_string_user = my_string[num_letters:] + my_string[:num_letters]
print(f"(b/c) Move {num_letters} letters {error_note} -> Result: {modified_string_user}")
