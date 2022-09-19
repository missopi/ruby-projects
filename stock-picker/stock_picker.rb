stocks = []

def stock_picker(stocks)
    stocks.shift if stocks[0] == stocks.max
    stocks.pop if stocks[-1] == stocks.min
    stocks.each_with_index do |stock, index|
      p stock
    end
   
    # puts .to_a.inspect

  end

stock_picker([17,3,6,9,15,8,6,1,10])