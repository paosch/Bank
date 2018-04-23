require 'account'

describe Account do
  describe '#display_balance' do
    it 'shows current balance' do
      account = Account.new(10)
      expect(account.display_balance).to eq('Your current balance is £10')
    end
  end
end
