# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Bar.destroy_all

Bar.create(name: "Uchi", address: "904 Westheimer Road", phone_number: "7135224808", neighborhood: "Montrose", vibe: "trendy", price_level: "$$", start_time: DateTime.new(2018,1,1,17), end_time: DateTime.new(2018,01,01,18,30), sake: 3, beer: 3, cocktail: 6, wine_glass: 7, wine_bottle: 27)
