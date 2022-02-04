# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

types_of_bikes = ['Road Bike', 'Mountain Bike', 'Touring Bike', 'Folding Bike', 'BMX']
descriptions = ['Excellent for cruising', 'Great for getting from A - B quickly', 'Just a fun bike', 'Collectors Item']

10.times do
  bike = Bike.new(
    title: 'Bike for rent',
    description: descriptions.sample,
    bike_type: types_of_bikes.sample,
    location: 'Coventry',
    cost: 233
  )
  bike.save!
  booking = Booking.new(
    start_date: Date.today,
    end_date: Date.today,
    bike_id: bike.id
  )
  booking.save!

end

puts "Seeds added....."
