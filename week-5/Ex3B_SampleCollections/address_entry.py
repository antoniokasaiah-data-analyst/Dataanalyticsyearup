# Create a file named address_entry.py, and in it define a dictionary named contact_info
# that includes the following keys and the sample values of your choice:

contact_info = {"name":"aly","address":"110 dinsmore pl","city":"new york","state":"NY","zip":"33319"}

# Dictionaries dont use indexes to find values they use keys
# you can add a string method to the values 
print(f"""NAME: {contact_info['name'].title()}\nAddress: {contact_info['address'].upper()}
City: {contact_info['city'].title()}
State: {contact_info['state']}
Zip: {contact_info['zip']}""")

print(f"""{contact_info['name'].title()} {contact_info['address'].upper()} {contact_info['state']} {contact_info['zip']}""")

# del function is how you delete keys from a dictionary
del contact_info['name']

# you can use the input function in a dictionary
full_name = {"First Name":input('Enter First Name: '),"Last Name":input('Enter Last Name: ')}

print(full_name)
# not a string method but a set method
# there are 4 types of methods 
# string, set, list, and dictionary
full_name.update({"honorific":"Mr"})

# python runs script from the top down 
# if you dont print the new script below the old print it wont show up
print(full_name)

# update is a set/dictionary method
# used to add keys and values 
# this script adds the variable/ dictionary to another variable/ dictionary
contact_info.update(full_name)

# you can add dictionaries together
print(contact_info)

print(f"""{contact_info['honorific'].title()} {contact_info['address'].upper()} {contact_info['state']} {contact_info['zip']} """)