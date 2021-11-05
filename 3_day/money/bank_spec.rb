require "./bank.rb"

RSpec.describe Bank do

  context "存錢功能" do
    # test case 測試個案
    it "可以存錢" do
      # 3A原則:Arrange、Act、Assert
      # Arrange 安排
      account = Bank.new(10)

      # Act 行為
      account.deposit(5) #存5元

      # Assert 斷言(預期的結果)
      expect(account.balance).to be 10
    end

    # 測試個案2
    it "不可以存 0 元或是小於 0 元的金額" do
      # Arrange,存 10 元
      account = Bank.new(10)

      # Act
      account.deposit(-5) #存-5元

      # Assert(結果會和 new 一樣)
      # 也可以用 raise 強制拋出錯誤，也可以客製化自己的錯誤 - StandardError
      # RuntimeError 通用錯誤
      expect(account.balance).to be 10
    end
  end

  context "領錢功能" do
    # 個案
    it "可以領錢" do
      # Arrange
      account = Bank.new(10)
      # Act
      money = account.withdraw(3) #領3元
      # Assert
      # money 要接 return amount 回傳值
      expect(money).to be 3 
      expect(account.balance).to be 7
    end

    it "不能領負的錢" do
      account = Bank.new(10)
      expect {account.withdraw(-3) }.to raise_exception BankAmountNegativeError
    end

    it "不能領超過餘額的錢" do
      account = Bank.new(10)
      expect { account.withdraw(20) }.to raise_exception BankBalanceError
    end
  end
  
end

#執行 rspec XXX.rb