str1='sonushilpa@msritchandruvaibhav'
str2='shilpa@msritcv'
c,j=0,0
cnt=0
for char in str1:
	if (str2.find(char)>=0 and j==str1.find(char)  ):
		cnt+=1
	j+=1
print cnt
