require 'transaction'

describe Transaction do
  subject(:transaction) { Transaction.new }
  describe '#add_transaction' do
    it 'adds each transaction to transactions array' do
      transaction.add_transaction(['20/11/2017', 10, '-', 20])
      expect(transaction.transactions).to eq([['20/11/2017', 10, '-', 20]])
    end
  end
end
