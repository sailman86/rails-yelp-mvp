# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all

puts "Creating Restaurants"

rest1 = { name: 'rest1', address: '7 limbu str', phone_number: '+34655465544', category: 'italian' }
rest2 = { name: 'rest2', address: '9 skjh str', phone_number: '+34654546544', category: 'french' }
rest3 = { name: 'rest3', address: '18 limbu str', phone_number: '+34655465774', category: 'chinese' }
rest4 = { name: 'rest4', address: '7 alleman str', phone_number: '+344555465544', category: 'japanese' }
rest5 = { name: 'rest5', address: '73 stran str', phone_number: '+34455546434', category: 'italian' }

[rest1, rest2, rest3, rest4, rest5].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
