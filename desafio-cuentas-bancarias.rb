require 'byebug'
class User
  attr_accessor :name
  def initialize(user_name, bank_accounts)
    @name = user_name
    @bank_accounts = bank_accounts
  end
  def total_balance
    
  end

end

class BankAccount
  attr_accessor :bank_name 
  attr_accessor :account_number
  attr_accessor :balance

  def initialize(bank_name, account_number, balance = 0)
    @bank = bank_name
    @account_number = account_number
    @balance = balance
  end

  def transfer_money(external_account)
    byebug
    @balance = @balance - amount
    external_account.balance = external_account.balance + amount
  end
end

account1 = BankAccount.new('Krungsri Bank', '123-123', 5000)
account2 = BankAccount.new('Kasikorn Bank', '123-124', 5000)
account1.transfer_money(account2)

puts account1.balance
puts account2.balance
