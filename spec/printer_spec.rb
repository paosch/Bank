require 'printer'
require 'account'

describe Printer do
  subject(:printer) { Printer.new }
  describe '#print_col_names' do
    it 'displays column names for bank statement table' do
      expect { printer.print_col_names }.to output('Date'.ljust(10) + ' ||' + 'Credit'.center(10) + ' ||' + 'Debit'.center(10) + " ||" + 'Balance'.rjust(10) + "\n").to_stdout
    end
  end

  describe '#print_statement' do
    it 'prints bank statement' do
      date = Date.today.to_s
      expect { printer.print_statement([[date, 50, '-', 60]]) }.to output('Date'.ljust(10) + ' ||' + 'Credit'.center(10) + ' ||' + 'Debit'.center(10) + " ||" + 'Balance'.rjust(10) + "\n" + date.ljust(10) + ' ||' + '50'.center(10) + ' ||' + '-'.center(10) + ' ||' + '60'.rjust(10) + "\n").to_stdout
    end
  end
end
