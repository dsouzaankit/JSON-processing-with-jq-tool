.[]					#emit each element of input array
| select(				#select entire row based on evaluated boolean condition; see below
if (.payload.hours | length) > 0 	#check if business hours exist and is not a null string 
then .payload.hours 
else empty 
end
| fromjson				#since business hours are encoded as a json string, we need to parse it before further processing
| if (.sunday | length) > 0 		#extract time for Sundays, if it exists and is not empty
then .sunday 
else empty 
end
| .[]					#emit each element of input array
| .[0]					#select business opening hour, which is the 1st element of each array
| split(":")[0]				#split string on ':' character and extract the 1st substring, which is the hour part of time
| if tonumber < 10			#convert the hour string to a number and check if its < 10 ( before 10:00 am) 
then true 				#if above condition holds, output True
else false 				#otherwise, output False
end
)
