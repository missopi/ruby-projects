stocks = []

def stock_picker(stocks)

    buy_day = 0
    sell_day = 0

    stocks.each_with_index do |stock1, index1|
        stocks.each_with_index do |stock2, index2|
            p stock1
            p stock2
        end
    end
   
    p pair = [buy_day, sell_day]

  end

stock_picker([17,3,6,9,15,8,6,1,10])