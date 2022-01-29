class User < ApplicationRecord
  validates :username, :email, presence: true
  has_many :bookings
  has_many :bikes
end
