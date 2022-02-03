class Bike < ApplicationRecord
  validates :title, :description, :type, :location, :cost, presence: true
  validates :description, inclusion: { in: 50..150 }

  has_many :bookings
end
