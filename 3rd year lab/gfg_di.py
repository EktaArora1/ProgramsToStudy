#code
n=int(input())
for i in range(n):
    a,b=map(int,input().split())
    c=[]
    if(a>=b):
        for j in range(a):
            j=str(j)
            c.append(b)
            for h in range(1,len(str(a))):
                a=str(a)
               
                if(str(b) in j[h]):
                    c.append(int(h))
                    break
        print(c)
                   
    else:
        print(-1)
