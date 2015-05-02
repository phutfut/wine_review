# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Wine.where(name: 'Kendall Jackson')
    .first_or_create!(
  year: 1999,
  winery: 'Napa Valley',
  country: 'USA',
  varietal: 'Cabernet'
)

Wine.where(name: 'Radius')
    .first_or_create!(
  year: 2000,
  winery: 'Burgundy',
  country: 'FRANCE',
  varietal: 'Merlot'
)

Wine.where(name: 'Meiomi')
    .first_or_create!(
  year: 2001,
  winery: 'Villa Vignamaggio',
  country: 'ITALY',
  varietal: 'Pinot Noir'
)

Wine.where(name: "D'Autrefois")
    .first_or_create!(
  year: 2002,
  winery: 'Ceretto Aziende',
  country: 'ITALY',
  varietal: 'Pinot Grigio'
)

Wine.where(name: 'Santa Margherita')
    .first_or_create!(
  year: 2003,
  winery: 'Napa Valley',
  country: 'USA',
  varietal: 'Cabernet'
)

Wine.where(name: 'Cloud Break')
    .first_or_create!(
  year: 2004,
  winery: 'Bordeaux',
  country: 'FRANCE',
  varietal: 'Merlot'
)
