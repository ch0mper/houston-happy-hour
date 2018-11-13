# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'
Bar.destroy_all

csv_text = File.read(Rails.root.join('lib', 'seeds', 'happy_hour_seeds.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Bar.new
  t.name = row['Bar Name']
  t.address = row['Bar Address']
  t.phone_number = row['Phone Number']
  t.neighborhood = row['Bar Neighborhood']
  t.vibe = row['Vibe']
  t.price_level = row['Priciness']
  t.sake = row['sake']
  t.beer = row['beer']
  t.cocktail = row['cocktail']
  t.wine_glass = row['wine_glass']
  t.wine_bottle = row['wine_bottle']
  t.beer_and_shot = row['beer_and_shot']
  t.start_time = row['Start Time']
  t.end_time = row['End Time']
  t.save
  puts "#{t.name}, #{t.neighborhood} saved"
end

puts "There are now #{Bar.count} rows in the bars table"

# Bar.create(name: "Uchi", address: "904 Westheimer Road", phone_number: "713-522-4808", neighborhood: "Montrose", vibe: "trendy", price_level: "$$", start_time: DateTime.new(2018,1,1,17), end_time: DateTime.new(2018,01,01,18,30), sake: 3, beer: 3, cocktail: 6, wine_glass: 7, wine_bottle: 27)
