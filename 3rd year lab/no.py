def res(a,b):#using integer
    g=a
    while(a!=0):
        r=a%10
        if(r==b):
            f=1
            break
        else:
            f=0
        a=int(a/10)
    if(f==1):
        return g
    else:
        return -1
def abc(c,z):
    p=0
    for i in range(1,c):
        d=res(i,z)
        if(d!=-1):
            print(d,end=" ")
            p=1
    return p
               
n=int(input())
lis=[]
for l in range(n):
    a,b=map(int,input().split())
    lis.append(a)
    lis.append(b)
n=n+n
for l in range(0,n,2):
    y=lis[l]+1
    z=lis[l+1]
    q=abc(y,z)
    if(q!=1):
        print('-1')
    
        
