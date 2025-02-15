# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
FlightPassenger.destroy_all
Passenger.destroy_all
Flight.destroy_all
Airline.destroy_all

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
