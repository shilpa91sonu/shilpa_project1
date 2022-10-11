def bs(a):
# a = name of list
   b=len(a)-1 
# minus 1 because we always compare 2 adjacent values
   for x in range(b):
	c=0
	if a[x]<a[x+1]:
		a[x]=a[x+1]
		c=+-1
	else:
		a[x+1]=a[x]
        	c=c+1
		
   print a
a=[32,5,3,6,7,54,87]
bs(a)
