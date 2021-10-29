class Cat
  
  # attr_reader :age
  # attr_writer :age
  attr_accessor :age #可以看手冊，但字串也會過

  def initialize(age)
    @age = age
  end

  # # getter(回傳)
  # def age
  #   return @age
  # end

  # # setter(設定)
  # def age=(new_age)
  #   @age = new_age
  # end

end

kitty = Cat.new(18)
p kitty.age