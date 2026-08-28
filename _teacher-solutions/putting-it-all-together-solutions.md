# Putting It All Together: Program Solutions

These solutions are for teacher reference only. This file is outside the `docs/` folder, so it is not included in the site build.

## Task 1: School Trip Calculator

```python
# School Trip Calculator

# Store the labels used in the output
costLabels = ["Entry total", "Bus cost", "Total cost"]

# Get information from the user
pupilName = input("Enter the pupil's name: ")
destination = input("Enter the destination: ")
numberOfPupils = int(input("Enter the number of pupils: "))
entryCost = float(input("Enter the entry cost per pupil: "))
busCost = float(input("Enter the bus cost: "))

# Calculate the costs
entryTotal = numberOfPupils * entryCost
totalCost = entryTotal + busCost
costPerPupil = totalCost / numberOfPupils

# Display the trip summary
print("School Trip Summary")
print("Pupil name:", pupilName)
print("Destination:", destination)
print(costLabels[0] + ": £", entryTotal)
print(costLabels[1] + ": £", busCost)
print(costLabels[2] + ": £", totalCost)
print("Cost per pupil: £", costPerPupil)
```

## Task 2: Class Test Summary

```python
# Class Test Summary

# Create an empty array for the scores
testScores = []

# Get the names and scores
name1 = input("Enter pupil 1 name: ")
score1 = int(input("Enter pupil 1 score: "))
testScores.append(score1)

name2 = input("Enter pupil 2 name: ")
score2 = int(input("Enter pupil 2 score: "))
testScores.append(score2)

name3 = input("Enter pupil 3 name: ")
score3 = int(input("Enter pupil 3 score: "))
testScores.append(score3)

# Calculate the total and average
totalScore = testScores[0] + testScores[1] + testScores[2]
averageScore = totalScore / 3

# Display the results
print("Class Test Summary")
print(name1 + ":", testScores[0])
print(name2 + ":", testScores[1])
print(name3 + ":", testScores[2])
print("Total score:", totalScore)
print("Average score:", averageScore)
```

## Task 3: Bake Sale Takings

```python
# Bake Sale Takings

# Store the item names in an array
itemNames = ["Cupcakes", "Brownies", "Cookies"]

# Store the item prices in variables
cupcakePrice = 1.50
browniePrice = 2.00
cookiePrice = 0.75

# Get information from the user
cupcakesSold = int(input("Enter the number of cupcakes sold: "))
browniesSold = int(input("Enter the number of brownies sold: "))
cookiesSold = int(input("Enter the number of cookies sold: "))
ingredientCost = float(input("Enter the ingredient cost: "))

# Calculate the money made from each item
cupcakeMoney = cupcakesSold * cupcakePrice
brownieMoney = browniesSold * browniePrice
cookieMoney = cookiesSold * cookiePrice

# Calculate the total money made and profit
totalMoneyMade = cupcakeMoney + brownieMoney + cookieMoney
profit = totalMoneyMade - ingredientCost

# Display the bake sale summary
print("Bake Sale Summary")
print(itemNames[0] + " money: £", cupcakeMoney)
print(itemNames[1] + " money: £", brownieMoney)
print(itemNames[2] + " money: £", cookieMoney)
print("Total money made: £", totalMoneyMade)
print("Ingredient cost: £", ingredientCost)
print("Profit: £", profit)
```
