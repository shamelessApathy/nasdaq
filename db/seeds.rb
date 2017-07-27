# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Create all Sectors available for stocks
Sector.create(name: 'Communication Services')
Sector.create(name: 'Energy')
Sector.create(name: 'Industrials')
Sector.create(name: 'Technology')
Sector.create(name: 'Consumer Defensive')
Sector.create(name: 'Healthcare')
Sector.create(name: 'Utilities')
Sector.create(name: 'Basic Materials')
Sector.create(name: 'Consumer Cyclical')
Sector.create(name: 'Financial Services')
Sector.create(name: 'Real Estate')

t = Stock.create!(ticker: "T", sector_id:"1");
vz = Stock.create!(ticker: "VZ", sector_id:"1");
mtn = Stock.create!(ticker:'MTN', sector_id: "9")
pfe = Stock.create!(ticker:'PFE', sector_id: "6")



# Create demo User
user = User.create(username: 'demo', email: 'demo@demo.com', password: 'demo123')

# Create demo Portoflio
#portfolio = Portfolio.create(name:'Demo Portfolio', user: user)
p = Portfolio.create!(name:'Demo Portfolio', user: User.last)
# Create stocks for demo Portfolio
PortfolioStock.create(portfolio:p, stock:t, price:'25.00', quantity:100, buy:true, sell:nil, user_comment:"this is the demo seeder")
PortfolioStock.create(portfolio:p, stock:vz, price:'35.00', quantity:100, buy:true, sell:nil, user_comment:"this is the demo seeder")
PortfolioStock.create(portfolio:p, stock:pfe, price:'15.00', quantity:100, buy:true, sell:nil, user_comment:"this is the demo seeder")

