class Array
  def my_uniq
    different =[]
    self.each {|el| different << el unless different.include?(el)}
    different
  end 

  def two_sum
    summed = []
    self.each_with_index do |el, i|
      j = i + 1 
      while j < self.length
        summed << [i, j] if el + self[j] == 0 
        j += 1 
      end 
    end 
    summed
  end 

  def my_transpose
    transposed = []
    self.each_index do |i|
      temp_arr = []
      self.each do |arr|
        temp_arr << arr[i]
      end
      transposed << temp_arr
    end 
    transposed
  end 

  def stock_picker
    biggest_profit = 0
    best_days = []

    self.each_with_index do |price, i|
      (i + 1...self.length).each do |i2|
        if self[i2] - price > biggest_profit
          biggest_profit = self[i2] - price
          best_days = [i, i2]
        end 
      end
    end
    best_days
  end
end 