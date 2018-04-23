require 'account'

describe Account do
  subject(:account) { Account.new(10) }
  describe '#display_balance' do
    it 'shows current balance' do
      account = Account.new(10)
      expect(account.display_balance).to eq('Your current balance is £10')
    end
  end
  describe '#deposit' do
    it 'customer can deposit money' do
      account.deposit(40)
      expect(account.balance).to eq(50)
    end
  end

  describe '#withdraw' do
    it 'customer can withdraw money from account' do
      account.withdraw(15)
      expect(account.balance).to eq(-5)
    end
  end
end
