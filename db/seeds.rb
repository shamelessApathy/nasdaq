# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



user = User.create(username: 'demo', email: 'demo@demo.com', password: 'demo123')
portfolio = Portfolio.create(user: user, balance: '10000', name: 'First Portfolio Seeded')
Trade.create(portfolio: portfolio, ticker: 'PFE', quantity: '70', buy: true)