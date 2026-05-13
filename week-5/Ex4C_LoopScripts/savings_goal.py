"""Create a variable for your starting bank balance, another that sets your savings goal, 
and a third with your weekly savings amount.

3. Use a while loop to compare your bank balance to your savings goal, if you haven’t 
met your goal yet, add the weekly savings amount to your bank balance.

 For each loop, print the statement, “This week my balance increased to ___.” Once your savings goal 
is met, print the statement, “Goal met! My current balance is ___.”"""

starting_bank_balance = float(input("Enter starting bank balance: "))
savings_goal = float(input("Enter savings goal: "))
weekly_savings = float(input("Enter weekly savings: "))
count = 0

# += is and augmented assignment operator 
# it takes the current value of the variable on the left and adds something to it using the variableon the right 
# count uses += to add 1 to counts value every loop
# this tracks how many times the script looped before conditions where met
while starting_bank_balance < savings_goal:
    count += 1
    starting_bank_balance += weekly_savings
    print(f"This week my balance increased to {starting_bank_balance}")

    if starting_bank_balance == savings_goal/2:
        print(f"Almost there! This week my balance is up to {starting_bank_balance}")

    if starting_bank_balance == float(savings_goal) * .75 and not got_treat: # variable used as a switch to stop loop when value is true stop looping
        starting_bank_balance -= 200 #allows you to subtract from the total 
        got_treat = True # makes operation a boolean so it runs 1 time instead of looping constantly
        print(f"So close! After treating myself my starting balance is {starting_bank_balance:.2f}")

print(f"Goal met! My current balance is {starting_bank_balance:.2f} and it took me {count} weeks to here ")
