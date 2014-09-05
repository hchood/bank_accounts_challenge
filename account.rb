class Account
  attr_reader :name, :transactions

  def initialize(account_data, transactions = [])
    @name = account_data['Account']
    @starting_balance = account_data['Balance']
    @transactions = transactions
  end

  def starting_balance
  end

  def current_balance
  end

  def summary
  end
end
