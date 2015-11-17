
class InsertionSort
    def sort_out_of_place(to_sort)
        sorted = []

        to_sort.each do |element|
            for index in 0..(to_sort.length - 1)
                sorted.insert(index, element) if to_sort[index] > element
            end
        end

        return to_sort
    end
end
