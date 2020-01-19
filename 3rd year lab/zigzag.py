arr = []
n = int(input('Enter how many elements you want: '))
for i in range(0, n):
    x = int(input('Enter the numbers into the array: '))
    arr.append(x)
print(arr)
c=[]
arr=sorted(arr)
if(n%2==0):
    while(n>0):
        first=arr[0]
        c.append(first)
        arr.remove(first)
        n=n-1
        last=arr[-1]
        c.append(last)
        arr.remove(last)
        n=n-1
else:
    while(n>1):
        first=arr[0]
        c.append(first)
        arr.remove(first)
        n=n-1
        last=arr[-1]
        c.append(last)
        arr.remove(last)
        n=n-1
    c.append(arr[0])
print(c)
