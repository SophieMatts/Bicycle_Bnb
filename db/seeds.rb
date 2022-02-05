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
  bike = Bike.create(
    title: 'Bike for rent',
    description: descriptions.sample,
    bike_type: types_of_bikes.sample,
    location: 'Coventry',
    cost: 233,
  )

  if bike.save
    puts "Bike added"
  else
    puts "Failed"
  # end

  # user_renter = User.create(
  #   email: "anton.gordon85@outlook.com",
  #   encrypted_password: "123456"
  # )
  #  if user_renter.save
  #   puts "User added"
  # else
  #   puts "Failed"
  # end

  # booking = Booking.create(
  #   user_id: user_renter,
  #   bike_id: bike,
  #   start_date: Date.today,
  #   end_date: Date.today
  # )
  #  if booking.save
  #   puts "Booking added"
  # else
  #   puts "Failed"
  # end
end

puts "Seeds added....."
