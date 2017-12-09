map(							#encapsulate all outputs into an array of 0s and 1s; see below
if (.payload.category_labels | length) > 0 		#check if category array exists and is not empty 
then .payload.category_labels[] 			#if above condition holds, emit all labels in the array
else empty 						#else ignore input and output nothing
end
| map(if contains("Museums") then 1 else 0 end)		#output an array of 1s and 0s such that, if 'Museums' is one of the categories, output is 1, otherwise is 0 
| add							#add array elements to get single output (0/1) per input place record 
)
| add							#finally sum all the 1s and 0s to get the count of places with 'Museums' as one of respective categories
