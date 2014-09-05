require 'csv'
require 'pry'

require_relative 'account'

# TODO:
# - Create our Account objects & our Transaction objects,
# and associate the two
# - Output a summary for each Account object

# create an array of Account objects
accounts = []

CSV.foreach('balances.csv', headers: true, converters: :numeric) do |row|
  accounts << Account.new(row)
end

