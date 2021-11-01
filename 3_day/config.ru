# 可以回覆 call 方法，目前 Proc 和 
# app = Proc.new{
#   [
#     404, #status
#     {"Content-type" => "text/html"}, #HEAD
#     ["Hello Ruby"] # BODY
#   ]
# }

# run app

class Cat
  def call(mary)
    p mary
    [
      200, #status
     {"Content-type" => "text/html"}, #HEAD
     ["Hello From Cat"] # BODY
    ]
  end
end

kitty = Cat.new
run kitty