def merge(arr1, arr2, arr)
    until arr1.empty? && arr2.empty?
        if arr1.empty?
            arr << arr2.shift(arr2.length)
        elsif arr2.empty?
            arr << arr1.shift(arr1.length)
        elsif arr1[0] < arr2[0]
            arr << arr1.shift
        elsif arr2[0] < arr1[0]
            arr << arr2.shift
        end
        arr
    end
    arr
end

def merge_sort(arr)
    n = arr.length
    aux_arr = []
    if n < 2
        return
    else
        arr1 = arr.slice(0, n/2)
        arr2 = arr.slice((n/2), n)
        merge_sort(arr1)
        merge_sort(arr2)
        merge(arr1, arr2, aux_arr)
    end
end

arr = [2, 1, 4, 3]
p merge_sort(arr)