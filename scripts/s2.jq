.[]						#emit each element of input array
| 
if (.payload.address | length) > 0		#check if address exists and is not a null string 
   and
   (.payload.address[0:1] | test("[0-9]"))	#extract 1st character of address and check if its a digit between 0 and 9
then .payload.address				#if above both conditions are true, then output the address
else empty 					#else ignore input and output nothing
end
