string = input()
alphabet = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]
# 목록에 없는 알파벳은 한글자씩 센다 

for i in alphabet :
    string = string.replace(i, '*')  

print(len(string))