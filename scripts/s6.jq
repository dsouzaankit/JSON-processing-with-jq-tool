.[]						#emit each element of input array
| 
if (.payload.name | length) > 0 		#check if name exists and is not a null string 
then .payload.name |= ascii_downcase 		#if above condition holds, transform/update the name string to lowercase 
else . 						#otherwise, emit the name string as-is
end
