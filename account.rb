class Account
  def initialize(account_data)
    @name = account_data['Account']
    @starting_balance = account_data['Balance']
  end

  def starting_balance
  end

  def current_balance
  end

  def summary
  end
end
