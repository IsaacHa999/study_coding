max = 0

for i in range(9):
    a = int(input())
    if a > max:
        max = a
        count = i +1
print(max)
print(count)