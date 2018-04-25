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
    it 'customer can deposit money into account' do
      account.deposit(40)
      expect(account.balance).to eq(50)
    end
    it 'saves transaction details in transactions array' do
      date = Date.today.to_s
      account.deposit(20)
      expect(account.transactions).to eq([[date, 20, '-', account.balance]])
    end
  end

  describe '#withdraw' do
    it 'customer can withdraw money from account' do
      account.withdraw(15)
      expect(account.balance).to eq(-5)
    end
  end
end
