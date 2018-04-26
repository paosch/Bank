require 'account'

describe Account do
  subject(:account) { Account.new(10) }
  describe '#display_balance' do
    it 'shows current balance' do
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
    it 'raises error if not enough money in account' do
      expect { account.withdraw(20) }.to raise_error('You have insufficient funds in your account')
    end

    it 'customer can withdraw money from account' do
      account.withdraw(10)
      expect(account.balance).to eq(0)
    end
  end
end
