
# creating a list of my two favorite movies
topmovies = ['The Lion King','Mulan']

# printing the list 
print(topmovies)

# using a f string and lenth to print the quantity of values in the list which is 2
print(f'The list topmovies includes my top {len(topmovies)} favorite movies')

# sorted list in alphabetical order
# sorted modifys strings 
print(sorted(topmovies))

# sorted modifys strings 
print(sorted(topmovies[0]))
print(topmovies)

# modifys list 
topmovies.sort()
print(topmovies)
print(sorted(topmovies))

# modifys list directly an adds django
topmovies.append('Django')
print(topmovies)

