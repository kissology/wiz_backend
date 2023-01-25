# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Clearing db...👋🏼👋🏼👋🏼'

Rating.destroy_all
Restroom.destroy_all
User.destroy_all
Location.destroy_all

puts 'Users...'

10.times do 
    User.find_or_create_by(username: 'username', password_digest: BCrypt::Password.create'Your_Password')
end

puts 'Ratings...'

20.times do
    Rating.find_or_create_by (user_id: User.sample.all, restroom_id: Restroom.sample.all, cleanliness: (rand 1..5),
    changing_table: [true, false].sample, handicap_accessable: [true, false].sample, gender_neutral: [true, false].sample, feminine_products: [true, false].sample,
    mirror: [true, false].sample)
end