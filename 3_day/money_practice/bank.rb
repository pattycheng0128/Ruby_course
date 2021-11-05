class Bank

  def initialize(balance)
    @balance = balance
  end

  #存錢功能
  def deposit(money)
    if money > 0
      @balance += money
    else
      puts "不可以存 0 元或是小於 0 元的金額"
    end
  end

  #領錢功能
  def withdraw(money)
    if (money > 0) && (money < balance) 
      @balance -= money
    else
      puts "不能領負的錢"
    end
  end

  def balance
    return @balance
  end
end