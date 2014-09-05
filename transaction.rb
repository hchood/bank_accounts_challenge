class Transaction
  attr_reader :account_name, :amount, :date, :description

  def initialize(transaction_data)
    @date = transaction_data['Date']
    @amount = transaction_data['Amount']
    @description = transaction_data['Description']
    @account_name = transaction_data['Account']
  end

  def deposit?
    amount > 0
  end

  def type
    if deposit?
      "DEPOSIT\t"
    else
      "\tWITHDRAWAL"
    end
  end

  def summary
    "$#{'%.2f' % amount.abs}\t#{type}\t#{date} - #{description}\n"
  end
end
