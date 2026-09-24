require 'minitest/autorun'
require_relative 'bubble_sort'

class BubbleSortTest < Minitest::Test
  def test_bubble_sort
    expected = [0, 2, 2, 3, 4, 78]
    assert_equal expected, BubbleSort.sort([4, 3, 78, 2, 0, 2])
  end

  def test_sorted_list
    expected = [1, 2, 3, 4, 5]
    assert_equal expected, BubbleSort.sort([1, 2, 3, 4, 5])
  end
end
