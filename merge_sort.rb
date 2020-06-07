def merge_sort(array)
    def merge(a, b, merged=[])
        until a.empty? || b.empty?
            merged.push(a.first > b.first ? b.shift : a.shift)
        end
    
        until a.empty? && b.empty?
            merged.push(a.shift) if a.first
            merged.push(b.shift) if b.first
        end

        merged
    end

    return array if array.length < 2

    a = merge_sort(array[0..array.length / 2 - 1])
    b = merge_sort(array[array.length / 2..-1])

    merge(a, b)
end


p merge_sort(Array.new(5) {rand(100)})