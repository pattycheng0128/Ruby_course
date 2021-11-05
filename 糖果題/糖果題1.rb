def high_and_low(numbers)
  # 實作寫在這裡
  result = numbers.split(' ').map{|number| number.to_i}.sort
  min_number = result.first
  max_number = result.last
  return "#{max_number} #{min_number}"
end