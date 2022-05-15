people = int(input())
peopleTime = list(map(int, input().split()))
result = 0

peopleTime.sort()

for i in range(1, people) :
    peopleTime[i]= peopleTime[i]+peopleTime[i-1]

result = sum(peopleTime)
print(result)