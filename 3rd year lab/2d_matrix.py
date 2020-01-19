m=int(input('Enter rows:'))
n=int(input('Enter columns:'))
matrix=[]
d=0
for i in range(0,n):
    matrix.append([])
for i in range(0,m):
    for j in range(0,n):
        matrix[i].append(j)
        matrix[i][j]=0
print('Enter values in matrix in sorted order')
for i in range(0,m):
    for j in range(0,n):
        print('Enter value in row:',i+1,'column:',j+1)
        matrix[i][j]=int(input())
c=int(input('Enter element to search'))
for i in range(0,m):
    for j in range(0,n):
        if(matrix[i][j]==c):
            d=1
            e=i+1
            f=j+1
if(d==1):
    print('Element found at ',e,f)
else:
    print('Element not found')
