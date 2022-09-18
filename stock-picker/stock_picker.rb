stocks = []

def stock_picker(stocks)
    stocks.shift if stocks[0] == stocks.max
    stocks.each do |stock|
      p stock
    end
    stocks.each_index { |stock| p stock }
  end

stock_picker([17,3,6,9,15,8,6,1,10])