module BubbleSort
  def self.sort(list)
    for i in 0...list.length
      for j in 0...(list.length - i - 1)
        list[j], list[j + 1] = list[j + 1], list[j] if list[j] > list[j + 1]
      end
    end
    list
  end
end
