require 'minitest/autorun'
require_relative 'caesar_cipher'

describe "CaesarCipher.caesar_cipher" do
  it "must shift lowercase" do
    _(CaesarCipher.caesar_cipher("hi", 5)).must_equal("mn")
  end

  it "must shift uppercase" do
    _(CaesarCipher.caesar_cipher("HI", 5)).must_equal("MN")
  end

  it "must preserve case" do
    _(CaesarCipher.caesar_cipher("Hi", 5)).must_equal("Mn")
  end

  it "must preserve spaces and puctuations" do
    _(CaesarCipher.caesar_cipher("What a string!", 5)).must_equal("Bmfy f xywnsl!")
  end

  it "must wrap around after z and Z" do
    _(CaesarCipher.caesar_cipher("xyzXYZ", 3)).must_equal("abcABC")
  end
end
