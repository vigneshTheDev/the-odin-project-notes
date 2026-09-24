module Substrings
  def self.substrings(word, dictionary)
    out = {}
    iword = word.downcase
    len = iword.length

    dictionary.each do |sub|
      isub = sub.downcase
      subs_len = len - iword.gsub(isub, '').length
      num_subs = subs_len / sub.length
      out[sub] = num_subs if num_subs > 0
    end
    return out
  end
end
