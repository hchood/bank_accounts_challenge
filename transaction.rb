class Transaction
  def initialize(transaction_data)
    @date = transaction_data['Date']
    @amount = transaction_data['Amount']
    @description = transaction_data['Description']
    @account = transaction_data['Account']
  end

  def deposit?
  end

  def summary
  end
end
