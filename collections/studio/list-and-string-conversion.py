proto_list1 = "3,6,9,12"
proto_list2 = "A;C;M;E"
proto_list3 = "space delimited string"
proto_list4 = "Comma-spaces, might, require, typing, caution"

strings = [proto_list1, proto_list2, proto_list3, proto_list4]

# a) Use the 'in' method to check to see if the words in each string are separated by commas (,), semicolons (;) or just spaces.

for item in strings:
    if ", " in item:
        print(f"'{item}' uses comma-space as a separator.")
    elif "," in item:
        print(f"'{item}' uses commas as a separator.")
    elif ";" in item:
        print(f"'{item}' uses semicolons as a separator.")
    elif " " in item:
        print(f"'{item}' uses spaces as a separator.")
    else:
        print(f"'{item}' has no recognized separator.")


# b) If the string uses commas to separate the words, split it into an array, reverse the entries, and then join the array into a new comma separated string.

for item in strings:
    if "," in item and ", " not in item:  # ensure it's plain commas, not comma-space
        words = item.split(",")      # split into a list
        words.reverse()              # reverse the order of elements
        result = ",".join(words)     # join back into a comma-separated string
        print(f"Original: {item} -> Reversed: {result}")


# c) If the string uses semicolons to separate the words, split it into an array, alphabetize the entries, and then join the array into a new comma separated string.

for item in strings:
    if ";" in item:                       # check if semicolons are used
        words = item.split(";")           # split into a list
        words.sort()                      # alphabetize the entries (A → Z)
        result = ",".join(words)          # join back using commas
        print(f"Original: {item} -> Alphabetized: {result}")


# d) If the string uses spaces to separate the words, split it into an array, reverse alphabetize the entries, and then join the array into a new space separated string.

for item in strings:
    if " " in item and "," not in item and ";" not in item:  # make sure it's space-separated only
        words = item.split()            # split by spaces into a list
        words.sort(reverse=True)        # reverse alphabetize (Z → A)
        result = " ".join(words)        # join back into a space-separated string
        print(f"Original: {item} -> Reverse Alphabetized: {result}")


# e) If the string uses ‘comma spaces’ to separate the list, modify your code to produce the same result as part “b”, making sure that the extra spaces are NOT part of the final string.

for item in strings:
    if ", " in item:                         # detects comma-space separation
        words = item.split(", ")              # split by comma-space
        words.reverse()                       # reverse the order like part (b)
        result = ",".join(words)               # join with commas (no spaces)
        print(f"Original: {item} -> Clean Reversed: {result}")
