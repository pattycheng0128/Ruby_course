module Cat
  def say
     'Hi!'
  end
end

module Bird
  def say
    'Hello!'
  end
end

class Dog
  extend Cat # 擴充 Cat 類別方法
  include Bird #加入 Bird 實體方法

  def say
    'Hey!'
  end
end

puts Dog.say #類別方法，要可以動，要加 self
puts Dog.new.say #實體方法，只會印出自己的 say，因為自己本身有一個同名的方法，所以會先往自己走

