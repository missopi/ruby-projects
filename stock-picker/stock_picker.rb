stocks = []

def stock_picker(stocks)
    stocks.shift if stocks[0] > stocks[1]
    stocks.each do |stock|
      p stock
    end
    stocks.each_index { |stock| p stock }
  end

stock_picker([17,3,6,9,15,8,6,1,10])