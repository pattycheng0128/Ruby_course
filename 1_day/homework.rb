def high_and_low(numbers)
  # 實作寫在這裡
  result = numbers.split(' ').map{|number| number.to_i}.sort
  min_number = result.first
  max_number = result.last
  return "#{max_number} #{min_number}"
end

p high_and_low("1 2 3 4 5")  # 印出 "5 1"
p high_and_low("1 2 -3 4 5") # 印出 "5 -3"
p high_and_low("1 9 3 4 -5") # 印出 "9 -5"
p high_and_low("8 3 -5 42 -1 0 0 -9 4 7 4 -4") # 印出 "42 -9"