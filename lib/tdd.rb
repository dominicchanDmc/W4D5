class Array
    
    def my_uniq
        return self if self.empty?
        new_arr = []
        count = Hash.new(0)
        self.each do |ele|
            if count[ele] == 0
                count[ele] +=1
                new_arr << ele
            end
        end
        new_arr
    end

    def two_sum
        new_arr = []
        (0...self.length - 1).each do |i|
            (i + 1...self.length).each do |j|
                new_arr << [i, j] if self[i] + self[j] == 0
            end
        end
        new_arr
    end

    def my_transpose
        return self if self.length < 2
        num_rows = self.length
        num_cols = self[0].length
        transposed_array = Array.new(num_cols) { Array.new(num_rows) }
        (0...num_rows).each do |row|
            (0...num_cols).each do |col|
                transposed_array[col][row] = self[row][col]
            end
        end
        transposed_array
    end
    
end

def stockPicker(prices)
    raise 'At lease input 2 prices' if prices.length < 2
    buy_day = 0
    sell_day = 1
    min_price = prices[buy_day]
    max_profit = prices[sell_day] - min_price
    (2...prices.length).each do |day|
      current_price = prices[day]
      if current_price - min_price > max_profit
        sell_day = day
        max_profit = current_price - min_price
      end
      if current_price < min_price
        buy_day = day
        min_price = current_price
      end
    end
    [buy_day, sell_day]
  end