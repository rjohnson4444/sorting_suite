require 'insertion_sort'

module SortingSuiteTest
  class InsertionSortTest < Minitest::Test
    def

    end

    def test_something

    end

    def test_can_sort_an_unsorted_array
      sorted = SortingSuite::InsertionSort.new([1,4,3,2]).sort
      assert_equal [1,2,3,4], sorted.sort
    end

  end

end
