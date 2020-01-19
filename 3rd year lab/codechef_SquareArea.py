t=int(input())
for i in range(t):
    p,q=map(int,input().split())
    add=0
    for j in range(1,min(p,q)+1):
        add=add+((p*q)*(j**2))
        p=p-1
        q=q-1
    print(add)
