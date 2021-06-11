require 'rails_helper'

RSpec.describe Passenger, type: :model do
  describe "relationships" do
    it {should have_many :flight_passengers}
    it {should have_many(:flights).through(:flight_passengers)}
    it {should have_many(:airlines).through(:flights)}
  end

  it 'finds adults' do
    passenger1 = Passenger.create!(name: "Joe", age: 50)
    passenger2 = Passenger.create!(name: "Jan", age: 30)
    passenger3 = Passenger.create!(name: "Harmon", age: 7)
    passenger4 = Passenger.create!(name: "Allie", age: 24)

    expect(Passenger.adult_passengers).to eq([passenger1, passenger2, passenger4])
  end
end
