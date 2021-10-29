module A
  module B
    class C
      puts "ccc"
    end
  end
end

kitty = A::B::C.new