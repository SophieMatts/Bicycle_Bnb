class Bike < ApplicationRecord
  validates :title, :description, :bike_type, :location, :cost, presence: true
  validates :description, length: { in: 10..50 }

  has_many :bookings
  has_one_attached :photo

end

# Apparently this line means we have to have a number between 50 and 150, not the number of characters
# validates :description, inclusion: { in: 50..150 }
