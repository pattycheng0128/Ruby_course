# 不可以直接存取私有方法，但可以用另一個公開方法去呼叫私有方法
class Cat
  def hi
    abc #2.7版後可以用 self.abc
  end

  private
  def abc
    puts "hello"
  end
end

kitty = Cat.new
kitty.hi

