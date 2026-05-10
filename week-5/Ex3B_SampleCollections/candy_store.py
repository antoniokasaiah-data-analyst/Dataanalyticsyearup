#  one that lists at least 3 types of candy that can come in 
#fruit flavors, and another that lists at least 3 fruity flavors. (Feel free to get creative with 
#your flavor ideas…

flavors1 = (input('Type strawberry: '),input('Type orange:'),input('Type banana: '))
flavors2 = (input('Type peach: '),input('Type grape: '),input('Type watermelon: '))
print(flavors1)
print(flavors2)

#Now create a new variable to store candy combinations as a set. Using the index of 
#each tuple, add at least one combination of each candy and flavor to the new set – for 
#example, putting together tuple1[0] and tuple2[1]

flavorcombos = {
    (flavors1[0] + " and " + flavors2[0]).title(),
    (flavors1[1] + " and " + flavors2[1]).title(),
    (flavors1[2] + " and " + flavors2[2]).title()} 

# print(f"Today's candy options include {flavorcombos}")

#ally = input("Ally type your last name: ")
#print(f"Your last name starts with a {ally.rstrip('ais')}")
print(f"Today's candy options include: {flavorcombos}" ) 
# after printing the position of the values change.
# sets are not indexed so position is randomized 