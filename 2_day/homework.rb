# 請寫一個類別，讓底下這三行可以正常執行：
module Math
  def self.abs(number)
    if (number.class == Integer) || (number.class == Float)
      number > 0 ? number : -number
    else
      "請輸入數字"
    end
  end
end

puts Math.abs(-2)      # 印出 2
puts Math.abs(20)      # 印出 20
puts Math.abs("aaa")   # 印出「請輸入數字」