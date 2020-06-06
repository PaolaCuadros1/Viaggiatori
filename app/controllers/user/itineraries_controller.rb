class User::ItinerariesController < ApplicationController
  before_action :set_itinerary, only: [:show]

  # GET /itineraries/1
  # GET /itineraries/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_itinerary
      @itinerary = Itinerary.find(params[:id])
    end
end
