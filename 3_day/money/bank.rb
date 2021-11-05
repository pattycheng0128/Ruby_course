require "./bank_error.rb"

# uninitialized constant Bank
class Bank

  attr_reader :balance # 回傳目前金額

  def initialize(money)
    @balance = money
  end

  #存錢功能
  def deposit(amount)
    if amount > 0
      @balance += amount
    else
      puts "不可以存 0 元或是小於 0 元的金額"
      # raise "This is an exception"
    end
  end

  #領錢功能
  def withdraw(amount)
    if amount <= 0
      raise BankAmountNegativeError.new("amount must greater than zero")
    end

    if amount > @balance
      raise BankBalanceError.new("balance is not enough")
    end

    @balance -= amount

    return amount
  end

end