module SortingSuite
  class BubbleSort
    def initialize(unsorted)
      @unsorted = unsorted
    end

    def unsorted
      @unsorted
    end

    def sort
      # Keep count of the amount of passes performed
      passes = 0

      # The amount of objects in the array
      total_elements = unsorted.length

      # when to know a pass is complete
      while passes < total_elements - 1
        left_index = 0
        right_index = 1

        # amount of comparisons done during each pass
        (total_elements - 1).times do
          right_element = unsorted[right_index]
          left_element = unsorted[left_index]

          # comparison between left and right element
          if left_element > right_element
            unsorted[left_index] = right_element
            unsorted[right_index] = left_element
          end

          # Position of right and left index
          # moves to the next position in the array after comparison
          right_index += 1
          left_index += 1
        end
        # Incrementing the amount of passes after a pass is completed
        passes += 1
      end
      unsorted
    end
  end

end

SortingSuite::BubbleSort.new(["d", "b", "a", "c"]).sort
SortingSuite::BubbleSort.new([4,2,5,3,1]).sort
