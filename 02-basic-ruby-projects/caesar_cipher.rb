module CaesarCipher
  def self.caesar_cipher(message, key) 
    message.split("").map {|c| self.encode(c, key)}.join()
  end

  def self.encode(char, key)
    ord = char.ord
    ord_a = 'a'.ord
    ord_z = 'z'.ord
    ord_A = 'A'.ord
    ord_Z = 'Z'.ord
    
    if ord >= ord_a && ord <= ord_z
      pos = (ord - ord_a + key) % 26
      return (pos + ord_a).chr
    elsif ord >= ord_A && ord <= ord_Z
      pos = (ord - ord_A + key) % 26
      return (pos + ord_A).chr
    else
      return char
    end
  end
end
