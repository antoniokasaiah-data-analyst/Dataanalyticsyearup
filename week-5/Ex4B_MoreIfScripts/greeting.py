"""Create a script named greeting.py. Define a variable that contains the current hour (0-
23). Display one of the greetings below based on the current hour:

Time                                Greeting
until 10:00am                       Good morning!
10:00am until 5:00pm                Good day!
5:00pm or later                     Good evening!
"""

time = float(input("Enter Current Time (0-24) : "))
 # uses and function to find a range between two values 
if time >= 5 and time > 10:
    print("Good Morning!")
elif time <= 17 and time >= 10:
    print("Good Day")
elif time <= 22 and time >= 17:
    print("Good Evening")
elif time >= 23 or time <= 4:
    print("What are up doing so late?")

else:
    print("Error pick a number between 0 and 24")