# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: "temporasit@gmail.com", burough: "Queens")
User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: "quiipsam@gmail.com", burough: "Brooklyn")
User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: "temporasit@gmail.com", burough: "Manhattan")
User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: "doloresEos@gmail.com", burough: "Bronx")
User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: "fugit@gmail.com", burough: "Queens")
User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: "shona_schinner@gmail.com", burough: "Brooklyn")
User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: "jeremy_robel@gmail.com", burough: "Manhattan")
User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: "trent_senger@gmail.com", burough: "Bronx")
User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: "jan_considine@gmail.com", burough: "Queens")
User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: "glory_barrows@gmail.com", burough: "Brooklyn")
puts 'rating...'
10.times do
    Rating.find_or_create_by(cleanliness: (rand 1..5), changing_table: Faker::Boolean.boolean,
    handicap_accessable: Faker::Boolean.boolean, gender_neutral: Faker::Boolean.boolean, feminine_products: Faker::Boolean.boolean, mirror: Faker::Boolean.boolean)
end
puts 'Restrooms...'
Restroom.create(address: 'E. 227th St. &, Bronx Blvd, The Bronx, NY 10467', user: User.all.sample, rating: Rating.all.sample)
Restroom.create(address: '4 Catherine Slip, New York, NY 10038', user: User.all.sample, rating: Rating.all.sample)
Restroom.create(address: 'East 86th Street &, East End Ave, New York, NY 10028', user: User.all.sample, rating: Rating.all.sample)
Restroom.create(address: '449 Bedford Avenue &, S 9th St, Brooklyn, NY 11211', user: User.all.sample, rating: Rating.all.sample)
Restroom.create(address: '195 Cadman Plaza W, Brooklyn, NY 11201', user: User.all.sample, rating: Rating.all.sample)
Restroom.create(address: '322 E 14th St, New York, New York 10009', user: User.all.sample, rating: Rating.all.sample)
Restroom.create(address: '36th Avenue, Long Island City, NY 11106', user: User.all.sample, rating: Rating.all.sample)
Restroom.create(address: 'Lenox Avenue, West 139 to West 140 street', user: User.all.sample, rating: Rating.all.sample)
Restroom.create(address: '202 Street & Jamaica Avenue', user: User.all.sample, rating: Rating.all.sample)
Restroom.create(address: '553 Thatford Ave, Brooklyn, NY 11212', user: User.all.sample, rating: Rating.all.sample)
Restroom.create(address: 'Albany Ave &, Foster Ave, Brooklyn, NY 11210', user: User.all.sample, rating: Rating.all.sample)
Restroom.create(address: 'Coney Island Ave/Church Av, Parkside Ave, Brooklyn, NY 11218', user: User.all.sample, rating: Rating.all.sample)
Restroom.create(address: 'West 91 Street & Riverside Drive"', user: User.all.sample, rating: Rating.all.sample)
Restroom.create(address: 'E 17th St, New York, NY 10003', user: User.all.sample, rating: Rating.all.sample)
Restroom.create(address: '116 East Dr, Brooklyn, NY 11225', user: User.all.sample, rating: Rating.all.sample)
Restroom.create(address: '55 Water St, Brooklyn, NY 11201', user: User.all.sample, rating: Rating.all.sample)
puts 'seeding complete...:seedling:'