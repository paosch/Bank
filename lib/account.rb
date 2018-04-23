class Account
  DEFAULT_BALANCE = 0
  attr_accessor :balance
  def initialize(balance = DEFAULT_BALANCE)
    @balance = balance
  end

  def display_balance
    p "Your current balance is £#{@balance}"
  end
end
