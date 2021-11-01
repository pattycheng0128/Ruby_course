require 'sinatra'

get "/" do
  "hi 您好!"
end

get "/" do
  "關於我們"
end

# 要在 views 中加入 about.rb
get "/about" do
  erb :about
end