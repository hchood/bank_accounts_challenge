require 'csv'
require 'pry'

require_relative 'account'
require_relative 'transaction'

# TODO:
# - Create our Account objects & our Transaction objects,
# and associate the two
# - Output a summary for each Account object

# create an array of Account objects
accounts = []

CSV.foreach('balances.csv', headers: true, converters: :numeric) do |row|
  accounts << Account.new(row)
end

# create an array of Transaction objects
transactions = []

CSV.foreach('bank_data.csv', headers: true, converters: :numeric) do |row|
  transactions << Transaction.new(row)
end

# associate Transactions with the correct account
# (take each transaction and put it in it's account's @transactions array)

transactions.each do |transaction|
  # - find account that transaction belongs to
  account = accounts.find { |acct| acct.name == transaction.account_name }
  # - push transaction into that account's @transactions array
  account.transactions << transaction
end

accounts.each do |account|
  puts account.summary
end






