function quicksort(a,left,right)
	local key = a[left]
	while left<right do
		while a[right]>=key and left<right do
			right=right-1
		end
		a[left] = a[right]

		while a[left]<=key and left<right do
			left=left+1
		end

		a[right]=a[left]
		a[left]=key
	end
	for i=1, #(a) do   
		io.write(a[i] .." ")
	end
	print("\n")
	return right
end

function sort(a,left,right)
	if left>=right then
		return
	end
	local index = quicksort(a,left,right)
	sort(a,left,index-1)
	sort(a,index+1,right)
end

a={6,2,3,12,5}
sort(a,1,#a)