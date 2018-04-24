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
  end

  describe '#withdraw' do
    it 'customer can withdraw money from account' do
      account.withdraw(15)
      expect(account.balance).to eq(-5)
    end
  end

  describe '#print_col_names' do
    it 'displays column names for bank statement table' do
      expect { account.print_col_names }.to output('Date'.ljust(10) + 'Credit'.center(10) + 'Debit'.center(10) + 'Balance'.rjust(10)).to_stdout
    end
  end
end
