sugar = int(input())
result = 0
    
while sugar > 0 : 
    if sugar % 5 == 0 : 
        result += sugar // 5
        print(result)
        break
        
    sugar -= 3
    result += 1
    
    if sugar == 1 or sugar == 2 :
        print(-1)
        break
    
    elif sugar == 0 :
        print(result)
        break
        
 