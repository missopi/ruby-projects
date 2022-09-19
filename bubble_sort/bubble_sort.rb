def bubble_sort(array)
    length = array.length
    return array if length <= 1

    loop do
        sorted = false
        (length-1).times do |num|
            if array[num] > array[num+1]
                array[num],array[num+1] = array[num+1],array[num]
                sorted = true
            end
        end
        break if not sorted
    end
    p array
end


bubble_sort([4,3,78,2,0,2])