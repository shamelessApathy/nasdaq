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
sector = Sector.create(name: 'Consumer Cyclical')
Sector.create(name: 'Financial Services')
Sector.create(name: 'Real Estate')

Stock.create(ticker: "T", sector_id:"1");
Stock.create(ticker: "VZ", sector_id:"1");



# Create demo User
user = User.create(username: 'demo', email: 'demo@demo.com', password: 'demo123')

# Create demo Portoflio
#portfolio = Portfolio.create(name:'Demo Portfolio', user: user)
p = Portfolio.create!(name:'Demo Portfolio', user: User.last)
# Create stocks for demo Portfolio

Stock.create(ticker:'MTN', sector: sector)
