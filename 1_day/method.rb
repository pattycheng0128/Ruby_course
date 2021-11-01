# ex1
# original_list = [1,2,3,4,5]
# reversed_list = original_list.reverse

# p reversed_list
# p original_list

# ex2
# age = 18

# def age
#   20
# end

# puts age() #20
# puts age #18

#ex3
def say_hello_to(name, option = {})
  return name,option
end

# p say_hello_to("patty",{age: 18, favorite: "ruby"})

# 在 Ruby 可以省略()，最後一行是hash的話，可以省略{}
p say_hello_to "patty", age: 18, favorite: "ruby"