require 'minitest/autorun'
require_relative 'substrings'

class SubstringsTest < Minitest::Test
  def setup
    @dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  end

  def test_substrings
    assert_equal({"below" => 1, "low" => 1}, Substrings.substrings("below", @dictionary))
  end
end

