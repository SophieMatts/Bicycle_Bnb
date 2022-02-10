# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
#   Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"

types_of_bikes = ['Road', 'Mountain', 'Touring', 'Folding Bike', 'BMX', 'Hybrid']
descriptions = ['Excellent for cruising', 'Great for getting from A - B quickly', 'Just a fun bike', 'Collectors Item']
locations = ['London', 'Manchester', 'Birmingham', 'Leeds', 'Glasgow', 'Southampton', 'Liverpool', 'Newcastle', 'Sheffield', 'Belfast']

10.times do

  bike = Bike.new(
    title: "#{Faker::Space.nasa_space_craft} #{(rand(1..9) * 1000)}",
    description: descriptions.sample,
    bike_type: types_of_bikes.sample,
    location: locations.sample,
    cost: rand(20..200)
  )

  if bike.save
    puts "Bike added"
  else
    puts "Failed"
  end


  user = User.create! :email => Faker::Internet.email, :password => 'topsecret', :password_confirmation => 'topsecret'
  if user.save
    puts "User added"
  else
    puts "Failed"
  end

  booking = Booking.create(
    user_id: user.id,
    bike_id: bike.id,
    start_date: Date.today,
    end_date: Date.today
  )
   if booking.save
    puts "Booking added"
  else
    puts "Failed"
  end
end

puts "Seeds added....."
