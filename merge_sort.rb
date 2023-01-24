def merge(arr1, arr2)
    arr = []
    while !arr1.empty? && !arr2.empty? do
        if arr1[0] < arr2[0]
            arr.push(arr1.shift)
        elsif arr2[0] < arr1[0]
            arr.push(arr2.shift)
        end
    end
    arr.concat(arr1).concat(arr2)
end

def merge_sort(arr)
    n = arr.length

    if n < 2
        arr
    else
        arr1 = merge_sort(arr.slice(0, n/2))
        arr2 = merge_sort(arr.slice((n/2), n))

        merge(arr1, arr2)
    end
end

arr = [2, 1, 4, 3, 6, 5]
p merge_sort(arr)