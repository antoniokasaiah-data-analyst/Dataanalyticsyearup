"""Create a script named loop_love.py.

2. Create a list of words that mean great such as amazing, awesome, excellent, etc.

3. Use a for loop to iterate through your list, and with each loop print out the phrase 
“Loops are ____!” filling in the blank with a word from the list.

4. When your loop has finished, print the additional phrase “I <3 loops """

nice_words = ["amazing","awesome","excellent"]
# while loops are like repeating if statements 
# that is why they repeat idefinitley 
# they only stop when the condition is met
# for loops stop at the last value in a list, tuple, set or dictionary 
for words in nice_words:
    print(f"Loops are {words}")

print("I <3 loops")
    