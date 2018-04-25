require 'printer'
class Account
  attr_accessor :balance, :transactions
  def initialize(balance = 0)
    @balance = balance
    @transactions = []
  end

  def display_balance
    p "Your current balance is £#{@balance}"
  end

  def deposit(amount)
    @balance += amount
    @transactions.push([Date.today.to_s, amount, '-', @balance])
  end

  def withdraw(amount)
    @balance -= amount
    @transactions.push([Date.today.to_s, '-', amount, @balance])
  end
end
