class AirlinesController < ApplicationController
  def show
    @airline = Airline.find(params[:id])
    @adults = @airline.passengers.adult_passengers.distinct
  end
end
