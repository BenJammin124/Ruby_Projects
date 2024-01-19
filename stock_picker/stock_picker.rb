stocks = [17, 3, 6, 9, 15, 8, 6, 1, 10]

def stock_picker(arr)
  lowest = {}
  arr.each_with_index do |num, index|
    arr.each_with_index do |num2, index2|
      next if num > num2
      next if num == num2
      next if index2 < index

      result = num - num2
      lowest[result] = "#{index},#{index2}".split(',')
    end
  end
  answer = lowest.min_by { |k, v| k }
  p answer.last.map(&:to_i)
end

stock_picker(stocks)
