class Passenger < ApplicationRecord
  has_many :flight_passengers
  has_many :flights, through: :flight_passengers
  has_many :airlines, through: :flights

  def self.adult_passengers
    where('age >= 18')
  end
end
