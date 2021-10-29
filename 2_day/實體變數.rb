class Cat

  @@counter = 1

  def initialize
    @@counter += 1
  end

  def self.number
    return @@counter
  end

end

p 5.times{Cat.new}

