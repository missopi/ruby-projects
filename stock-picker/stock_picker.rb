stocks = []

def stock_picker(stocks)

    buy_day = 0
    sell_day = 0

    stocks.each_with_index do |stock, index|
        stock_max = stocks[index..].max
        stock_min = stocks[..index].min
        stock_difference = stock_max - stock
    end
   
    pair = [buy_day, sell_day]

  end

stock_picker([17,3,6,9,15,8,6,1,10])