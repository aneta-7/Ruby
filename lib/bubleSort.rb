
class BubbleSort
    def sort(to_sort)
        sorted = false

        until sorted
            sorted = true

            for index in 0..(to_sort.length - 2)
                if to_sort[index] > to_sort[index + 1]
                    sorted = false
                    to_sort[index], to_sort[index + 1] = to_sort[index + 1], to_sort[index]
                end
            end
        end

        return to_sort
    end
end
