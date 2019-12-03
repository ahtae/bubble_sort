def bubble_sort(arr)
	(0...arr.length).each do |i|
		(0...arr.length).each do |i|
			arr[i], arr[i+1] = arr[i+1], arr[i] if i < arr.length-1 && arr[i] > arr[i+1]
		end
	end
	arr
end

def bubble_sort_by(arr)
        (0...arr.length).each do |i|
                (0...arr.length).each do |i|
                        arr[i], arr[i+1] = arr[i+1], arr[i] if i < arr.length-1 && yield(arr[i], arr[i+1]) > 0
                end
        end
	arr
end


p bubble_sort([4,3,78,2,0,2])

sorted =  bubble_sort_by(["hi","hello","hey"]) do |left,right|
	left.length - right.length
end
p sorted
