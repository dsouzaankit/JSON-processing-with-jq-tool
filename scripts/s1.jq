map({locality: .payload.locality})			#convert input array to an output array containing json tuples with key 'locality' and value = actual locality filtered out from input json
| group_by(.locality)					#group same keys into an array
| map({locality: .[0].locality, count: length})		#output json tuples with key 'locality', value = locality of first tuple from each grouped array, followed by another key 'count' with value = length/size of corresponding group
| sort_by(.count)					#sort tuples by ascending order of values of the key 'count'
