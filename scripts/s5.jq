map(						#encapsulate all outputs into an array; see below
if (.uuid | length) > 0 			#check if record uuid exists and is not a null string 
   and (.payload.name | length) > 0 		#check if place name exists and is not a null string 
   and (.payload.website | length) > 0 		#check if place website exists and is not a null string 
   and (.payload.email | length) > 0 		#check if place email address exists and is not a null string 
then {uuid: .uuid, 				#if above 4 conditions are true, then output a new object
      name: .payload.name, 			#containing the place uuid, name, website, and email address 
      website: .payload.website, 
      email: .payload.email} 
else empty 					#else ignore input and output nothing
end
)
