module Flyable
  def fly
    puts "I can fly!"
  end
end

class Animal
  puts "animal"
end

class Cat < Animal
  include Flyable
end


kitty = Cat.new
kitty.fly
# p Cat.superclass
# p Cat.class
# p Module.class

#印出實體方法數量
p Class.instance_methods.count
p Module.instance_methods.count

# 印出祖宗有哪些
p Cat.ancestors
p Cat.instance_methods(false).count