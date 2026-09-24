require 'minitest/autorun'
require_relative 'caesar_cipher'

class CaesarCipherTest < Minitest::Test
  def test_must_shift_lowercase
    assert_equal 'mn', CaesarCipher.caesar_cipher('hi', 5)
  end

  def test_must_shift_uppercase
    assert_equal 'MN', CaesarCipher.caesar_cipher('HI', 5)
  end

  def test_must_preserve_case
    assert_equal 'Mn', CaesarCipher.caesar_cipher('Hi', 5)
  end

  def test_must_preserve_spaces_punctuations
    assert_equal 'Bmfy f xywnsl!', CaesarCipher.caesar_cipher('What a string!', 5)
  end

  def test_must_wrap_around
    assert_equal 'abcABC', CaesarCipher.caesar_cipher('xyzXYZ', 3)
  end
end
