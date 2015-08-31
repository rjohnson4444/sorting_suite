require 'merge_sort'

class MergeSortTest < Minitest::Test
  def test_has_an_array
    array = SortingSuite::MergeSort.new([1,2,3,4])
    assert_equal [1,2,3,4], array.unsorted
  end
end
