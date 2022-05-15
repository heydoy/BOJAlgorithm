purchase = int(input())
moneys = [500, 100, 50, 10, 5, 1]
change = 1000 - purchase
result = 0

for money in moneys :
    result += change // money
    change %= money
    
print(result)