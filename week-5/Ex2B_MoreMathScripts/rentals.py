"""
There are X people going on a tour. Charter vans seat 15 passengers each. Vans cost 
$250 per day to rent (including the driver’s pay). 
How many vans do you need? 

How much will it cost to rent vans? What is the cost if you split it per person?
Code the script in a file named rentals.py
Test your script with 38 tourists. Now do some separate calculations to check your 
work:

a) How much money did your script say you had to charge per person? 
b) If you multiply that out, how much did you collect? 
c) How much were the vans? 
d) Why do you have leftover money?"""

from math import ceil
peopleontrip = int(input('How many people went on this trip: '))
cvan = 15
vancost =250
Vansneeded = peopleontrip/cvan
totalvancost = Vansneeded * 250
costperperson = totalvancost/peopleontrip
print(Vansneeded)
print(totalvancost)
print(costperperson)
print(f'For this trip, if there are {peopleontrip} people then we need {ceil(Vansneeded)} vans.\n' 
      f'In total the vans will cost ${totalvancost:.2f}, with each person paying about ${costperperson:.2f}.')