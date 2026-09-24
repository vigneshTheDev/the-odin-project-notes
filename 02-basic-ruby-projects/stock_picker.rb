module StockPicker
  def self.pick(prices)
    min_buy = prices[0]
    max_profit = 0

    min_price_day = 0

    max_profit_buy_day = 0
    max_profit_sell_day = 0

    prices.each_with_index do |p, i|
      if p < min_buy
        min_price_day = i
        min_buy = p
      end

      profit = p - min_buy
      next unless profit > max_profit

      max_profit_buy_day = min_price_day
      max_profit_sell_day = i
      max_profit = profit
    end

    [max_profit_buy_day, max_profit_sell_day]
  end
end
