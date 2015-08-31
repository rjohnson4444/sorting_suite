require 'insertion_sort'

class InsertionSortTest < Minitest::Test
  def test_has_an_array
    array = SortingSuite::InsertionSort.new([1,2,3,4])
    assert_equal [1,2,3,4], array.unsorted
  end

  def test_can_sort_an_unsorted_array
    sorted = SortingSuite::InsertionSort.new([1,4,3,2]).sort
    assert_equal [1,2,3,4], sorted.sort
  end

end
