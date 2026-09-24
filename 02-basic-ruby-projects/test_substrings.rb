require 'minitest/autorun'
require_relative 'substrings'

class SubstringsTest < Minitest::Test
  def setup
    @dictionary = %w[ below down go going horn how howdy it i low own part partner
                      sit ]
  end

  def test_substrings
    expected = {
      'below' => 1,
      'low' => 1
    }
    assert_equal expected, Substrings.substrings('below', @dictionary)
  end

  def test_substrings_multi_word
    expected = {
      'down' => 1,
      'go' => 1,
      'going' => 1,
      'how' => 2,
      'howdy' => 1,
      'it' => 2,
      'i' => 3,
      'own' => 1,
      'part' => 1,
      'partner' => 1,
      'sit' => 1
    }

    assert_equal expected,
                 Substrings.substrings("Howdy partner, sit down! How's it going?", @dictionary)
  end
end
