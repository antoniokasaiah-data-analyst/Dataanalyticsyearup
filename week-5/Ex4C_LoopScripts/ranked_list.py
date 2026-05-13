""" Create a list of at least 5 items using anything you like: favorite foods, pets, cities you'd 
like to visit, skills you want to develop, etc.
3. Use enumerate() with a for loop to print each item as a numbered list, starting at 1."""

list = [ "chicken", "rice","fish","candy","money"]

# number is used as a counter
# favs is used a variable 
# enumerate counts values in starting at 1
# print shows how many counts for each value in list 
for number, favs in enumerate(list,start =1):
    if number == 1: # compares the count value 
        print("<-top pick")
    print(f"{number}.{favs}")

done = False
for number, favs in enumerate(reversed(list),start =1):

    if number == 1 and not done:
        done = True
        print(f"{number}.{favs} <-top pick")
    
    else:
        print(f"{number}.{favs}")
    
