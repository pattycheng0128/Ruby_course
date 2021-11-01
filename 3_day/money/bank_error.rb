class BankError < StandardError
end

class BankAmountNegativeError < BankError
end

class BankBalanceError < BankError
end