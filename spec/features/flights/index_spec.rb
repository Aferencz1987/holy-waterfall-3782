require 'rails_helper'

RSpec.describe 'flight index' do
  it 'lists all flights and info' do
    airline1 = Airline.create!(name: "SWest")
    airline2 = Airline.create!(name: "Frontier")
    airline3 = Airline.create!(name: "Delta")

    flight1 = airline1.flights.create!(number: 1, date: "1/2/23", departure_city: "Denver", arrival_city: "Reno")
    flight2 = airline2.flights.create!(number: 1, date: "1/2/23", departure_city: "Denver", arrival_city: "Reno")
    flight3 = airline3.flights.create!(number: 1, date: "1/2/23", departure_city: "Denver", arrival_city: "Reno")

    passenger1 = Passenger.create!(name: "Joe", age: 50)
    passenger2 = Passenger.create!(name: "Jan", age: 30)
    passenger3 = Passenger.create!(name: "Harmon", age: 7)
    passenger4 = Passenger.create!(name: "Allie", age: 24)

    FlightPassenger.create!(flight: flight1, passenger: passenger1)
    FlightPassenger.create!(flight: flight1, passenger: passenger2)
    FlightPassenger.create!(flight: flight2, passenger: passenger3)
    FlightPassenger.create!(flight: flight3, passenger: passenger4)

    visit '/flights'

    expect(page).to have_content(flight1.number)
    expect(page).to have_content(flight2.number)
    expect(page).to have_content(flight3.number)
    expect(page).to have_content(airline1.name)
    expect(page).to have_content(airline2.name)
    expect(page).to have_content(airline3.name)
    expect(page).to have_content(passenger1.name)
    expect(page).to have_content(passenger2.name)
    expect(page).to have_content(passenger3.name)
    expect(page).to have_content(passenger4.name)
  end
end
