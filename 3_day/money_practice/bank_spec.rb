require "./bank.rb"

RSpec.describe Bank do

  context "存錢功能" do
    #測試個案1
    it "可以存錢" do
      account = Bank.new(10)

      account.deposit(5)

      expect(account.balance).to eq 15

    end
    # 測試個案2
    it "不可以存 0 元或是小於 0 元的金額" do
      account = Bank.new(10)

      account.deposit(0)

      expect(account.balance).to eq 10

    end
  end

  context "領錢功能" do

    #測試個案1
    it "可以領錢" do
      account = Bank.new(10)
      account.withdraw(5)
      expect(account.balance).to eq 5
    end

    #測試個案2
    it "不能領負的錢" do
      account = Bank.new(5)
      account.withdraw(-6)
      expect(account.balance).to eq 5
    end

    #測試個案3
    it "不能領超過餘額的錢" do
      account = Bank.new(10)
      account.withdraw(11)
      expect(account.balance).to eq 10
    end

  end
end