require 'minitest/autorun'
require_relative 'stock_picker'

class StockPickerTest < Minitest::Test
  def test_stockpicker
    expected = [1, 4]
    assert_equal expected,
                 StockPicker.pick([17, 3, 6, 9, 15, 8, 6, 1, 10])
  end
end
