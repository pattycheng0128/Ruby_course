class Integer
  def days
    self #自己和this很像
  end

  def ago
    "#{self} days ago"
    
  end
end

p 3.days.ago
p 5.days.ago