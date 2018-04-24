require 'date'
class Account
  DEFAULT_BALANCE = 0
  attr_accessor :balance, :transactions
  def initialize(balance = DEFAULT_BALANCE)
    @balance = balance
    @transactions = []
  end

  def display_balance
    p "Your current balance is £#{@balance}"
  end

  def deposit(amount)
    @balance += amount
    @transactions.push([Date.today.to_s, amount, nil, @balance])
  end

  def withdraw(amount)
    @balance -= amount
    # display_balance
  end

  def print_col_names
    print "#{'Date'.ljust(10)}" + "#{'Credit'.center(10)}" + "#{'Debit'.center(10)}" + "#{'Balance'.rjust(10)}"
  end

end
