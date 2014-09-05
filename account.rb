class Account
  attr_reader :name, :transactions, :starting_balance

  def initialize(account_data, transactions = [])
    @name = account_data['Account']
    @starting_balance = account_data['Balance']
    @transactions = transactions
  end

  def current_balance
    ending_balance = starting_balance

    transactions.each do |transaction|
      ending_balance += transaction.amount
    end

    ending_balance
  end

  def summary
    string = %Q{
      ==== #{name} ====
      Starting Balance:\t$#{starting_balance}
      Ending Balance:\t$#{current_balance}
    }

    transactions.each do |transaction|
      string << transaction.summary
    end

    string
  end
end





