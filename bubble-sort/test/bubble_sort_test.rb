require 'bubble_sort'

class BubbleSortTest < Minitest::Test
  def test_has_an_array
    array = SortingSuite::BubbleSort.new([1,2,3,4])
    assert_equal [1,2,3,4], array.unsorted
  end

  def test_can_sort_an_unsorted_array
    array = SortingSuite::BubbleSort.new([2,4,3,1])
    assert_equal [1,2,3,4], array.sort
  end
end
