require "./bank_error.rb"

# uninitialized constant Bank
class Bank
  def initialize(money)
    @money = money
  end

  #存錢功能
  def deposit(amount)
    if amount > 0
      @money += amount
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

    if amount > @money
      raise BankBalanceError.new("balance is not enough")
    end

    @money -= amount

    return amount
  end

  # 回傳目前金額
  def balance
    return @money
  end
end