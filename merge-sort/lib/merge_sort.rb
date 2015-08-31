
# Split each array into single digit integers
# Compare each indiviual integer and place each integer back in the array from lowest to highest
# Compare each position in the first array to the second array.
# Merge each array with elements from smallest to largest

module SortingSuite
  class MergeSort
      def initialize(unsorted)
        @unsorted = unsorted
      end

      def unsorted
        @unsorted
      end

      def sort
        unsorted = [1, 2, 3, 4, 5, 6, 7, 8].shuffle
        unsorted_size = unsorted.length

        unsorted.partition do |n|
          n.even?
        end

        unsorted
      end
  end

end
