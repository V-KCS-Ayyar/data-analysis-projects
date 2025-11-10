food = "water bottles,meal packs,snacks,chocolate"
equipment = "space suits,jet packs,tool belts,thermal detonators"
pets = "parrots,cats,moose,alien eggs"
sleep_aids = "blankets,pillows,eyepatches,alarm clocks"

# a) Use split to convert the strings into four cabinet lists. Alphabetize the contents of each cabinet.
food_list = sorted(food.split(","))
equipment_list = sorted(equipment.split(","))
pets_list = sorted(pets.split(","))
sleep_aids_list = sorted(sleep_aids.split(","))

# b) Initialize a cargo_hold list and add the cabinet lists to it. Print cargo_hold to verify its structure.
cargo_hold = [food_list, equipment_list, pets_list, sleep_aids_list]
print("Cargo Hold Structure:")
print(cargo_hold)

# c) Query the user to select a cabinet (0 - 3) in the cargo_hold.
try:
    cabinet_num = int(input("\nSelect a cabinet (0–3): "))

    # d) Use bracket notation and format to display the contents of the selected cabinet.
    if 0 <= cabinet_num < len(cargo_hold):
        print(f"Cabinet {cabinet_num} contains: {cargo_hold[cabinet_num]}")
    else:
        print("Invalid cabinet number. Please enter a number between 0 and 3.")

except ValueError:
    print("Invalid input. Please enter an integer between 0 and 3.")

# e) Modify the code to query the user for BOTH a cabinet in cargo_hold AND a particular item.
try:
    cabinet_num = int(input("\nSelect a cabinet again (0–3): "))

    if 0 <= cabinet_num < len(cargo_hold):
        item = input("Enter an item to search for: ").strip().lower()
        cabinet_contents = [i.lower() for i in cargo_hold[cabinet_num]]
        if item in cabinet_contents:
            print(f"Cabinet {cabinet_num} DOES contain '{item}'.")
        else:
            print(f"Cabinet {cabinet_num} DOES NOT contain '{item}'.")
    else:
        print("Invalid cabinet number. Please enter a number between 0 and 3.")

except ValueError:
    print("Invalid input. Please enter a valid number.")
