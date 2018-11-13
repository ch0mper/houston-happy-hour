# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'
Bar.destroy_all
User.destroy_all
UserBar.destroy_all

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
end

puts "There are now #{Bar.count} rows in the bars table"

User.create(username: "Alan", password: "1234")
User.create(username: "Janet", password: "pass")
User.create(username: "Hannah", password: "word")
puts "There are now #{User.count} rows in the users table"

UserBar.create(user_id: 1, bar_id: 1)
UserBar.create(user_id: 1, bar_id: 2)
UserBar.create(user_id: 1, bar_id: 3)
UserBar.create(user_id: 1, bar_id: 4)
UserBar.create(user_id: 2, bar_id: 5)
UserBar.create(user_id: 2, bar_id: 6)
UserBar.create(user_id: 2, bar_id: 7)
UserBar.create(user_id: 2, bar_id: 8)
UserBar.create(user_id: 3, bar_id: 9)
UserBar.create(user_id: 3, bar_id: 10)
UserBar.create(user_id: 3, bar_id: 11)
UserBar.create(user_id: 3, bar_id: 12)
puts "There are now #{UserBar.count} rows in the userbars table"
