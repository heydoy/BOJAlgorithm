n,k = map(int, input().split())
coins = list()
result = 0

for i in range(n) :
    coins.append(int(input()))
    

for i in reversed(range(n)):
    result += k // coins[i] 
    k = k % coins[i]
        
print(result)