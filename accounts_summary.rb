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

binding.pry






