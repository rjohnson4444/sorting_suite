module SortingSuite
  class InsertionSort
    def initialize(unsorted)
      @unsorted = unsorted    # => ["b", "e", "a", "c"], [2, 5, 4, 1, 3]
    end                       # => :initialize

    def unsorted
      @unsorted   # => ["b", "e", "a", "c"], ["b", "e", "a", "c"], ["b", "e", "a", "c"], ["b", "e", "a", "c"], ["b", "e", "a", "c"], ["b", "e", "a", "c"], ["b", "e", "a", "c"], ["b", "e", "a", "c"], ["b", "e", "a", "c"], ["b", "e", "a", "c"], ["b", "e", "a", "c"], ["b", "e", "a", "c"], ["b", "e", "a", "c"], ["b", "e", "a", "c"], ["b", "e", "a", "c"], ["b", "e", "a", "c"], ["b", "e", "a", "c"], ["b", "e", "a", "c"], ["b", "e", "a", "c"], ["b", "e", "a", "c"], ["b", "e", "a", "c"], ["b", "e", "a", "c"], ["b", "e", "a", "c"], [2, 5, 4, 1, 3], [2, 5, 4, 1, 3], [2, 5, 4, 1, 3], [2, 5, 4, 1, 3], [2, 5, 4, 1, 3], [2, 5, 4, 1, 3], [2, 5, 4, 1, 3], [2, 5, 4, 1, 3], [2, 5, 4, 1, 3], [2, 5, 4, 1, 3], [2, 5, 4, 1, 3], [2, 5, 4, 1, 3], [2, 5, 4, 1, 3], [2, 5, 4, 1, 3], [2, 5, 4, 1, 3], [2, 5, 4, 1, 3], [2, 5, 4, 1, 3], [2, 5, 4, 1, 3], [2, 5, 4, 1, 3], [2, 5, 4, 1, 3], [2, 5, 4, 1, 3], [2, 5, 4, 1, 3], [2, 5, 4, 1, 3], [2, 5, 4, 1, 3], [2, 5, 4, 1, 3], [2, 5, 4, 1, 3], [2, 5, 4, 1, 3], [2, 5, 4,...
    end           # => :unsorted

    def sort
      # Array that stores sorted numbers
      sorted = []  # => [], []

      # Keeping track of position within the array.
      left_index = 0   # => 0, 0
      right_index = 1  # => 1, 1

      # If the sorted array is empty, add the first element of unsorted array
      # to the sorted array in position 0.
      if sorted.empty?                             # => true, true
        sorted[left_index] = unsorted[left_index]  # => "b", 2
      end                                          # => "b", 2

      while unsorted[right_index] != nil                                                 # => true, true, true, true, true, false, true, true, true, true, true, true, true, false
        # Compare the element in position 0 (sorted element) of the sorted array
        # to the element in position 1 (unsorted element) of the unsorted array.
        if sorted[left_index] < unsorted[right_index] && sorted[left_index + 1].nil?     # => true, false, false, false, false, true, false, false, false, false, false, false
          # Places unsorted element at the end of the sorted array.
          sorted << unsorted[right_index]                                                # => ["b", "e"], [2, 5]
          right_index += 1                                                               # => 2, 2
          left_index = 0                                                                 # => 0, 0
        elsif sorted[left_index] > unsorted[right_index] && sorted[left_index + 1].nil?  # => false, false, false, true, false, true, false, false, false, false
          # Inserts the unsorted element into the sorted array in proper place when
          # position to the right of the sorted element is empty.
          sorted.insert(right_index - 1, unsorted[right_index])                          # => ["a", "b", "c", "e"], [2, 4, 5]
          right_index += 1                                                               # => 4, 3
          left_index = 0                                                                 # => 0, 0
        elsif sorted[left_index] < unsorted[right_index]                                 # => false, true, true, true, false, true, true, false
          # Sorted array "walker"
          left_index += 1                                                                # => 1, 2, 1, 1, 2
        else sorted[left_index] > unsorted[right_index]                                  # => true, true, true
          # Inserts the unsorted element in proper place when position to the right of the
          # sorted element is not empty.
          sorted.insert(left_index, unsorted[right_index])                               # => ["a", "b", "e"], [1, 2, 4, 5], [1, 2, 3, 4, 5]
          right_index += 1                                                               # => 3, 4, 5
          left_index = 0                                                                 # => 0, 0, 0
        end                                                                              # => 0, 0, 1, 2, 0, 0, 1, 0, 0, 1, 2, 0
      end                                                                                # => nil, nil
      sorted                                                                             # => ["a", "b", "c", "e"], [1, 2, 3, 4, 5]
    end                                                                                  # => :sort
  end                                                                                    # => :sort

end  # => :sort

SortingSuite::InsertionSort.new(["b", "e", "a", "c"]).sort  # => ["a", "b", "c", "e"]

SortingSuite::InsertionSort.new([2,5,4,1,3]).sort  # => [1, 2, 3, 4, 5]
