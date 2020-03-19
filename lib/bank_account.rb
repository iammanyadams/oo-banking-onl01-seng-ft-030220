class BankAccount

attr_reader :name
attr_accessor :balance, :status
attr_accessor :valid, :withdraw, :deposit


def initialize(name)
  @name, @status, @balance =name, "open", 1000
  #@status ="open"
  #@balance =1000

end

def deposit(deposit)
  self.balance += deposit
end
def withdraw(withdraw)
  self.balance = (balance - withdraw)
end
def display_balance
  "Your balance is $#{self.balance}."
end
def valid?
  self.balance > 0 && self.status == "open"
end
def close_account
  @status = "closed"
end


end
