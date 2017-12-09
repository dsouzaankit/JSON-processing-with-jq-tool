.[]							#emit each element of input array
| 
if (.payload.address | length) > 0 			#check if address exists and is not a null string
   and (.payload.address | test("[0-9]") | not)		#test if not even single character in address is a digit between 0 and 9
then select(.payload.address) 				#if above both conditions are true, then output entire row containing the address
else empty 						#else ignore input and output nothing
end
