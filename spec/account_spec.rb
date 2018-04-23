require 'account'

describe Account do
  describe '#display_balance' do
    it 'shows current balance' do
      balance = 0
      expect(subject.display_balance).to eq(balance)
    end
  end
end
