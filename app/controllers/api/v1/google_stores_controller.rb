class Api::V1::GoogleStoresController < ApplicationController
  
  def index
    places = GetGoogleRestaurantListService.new(params[:latitude], params[:longitude]).call
    render json: places
  end

  def show
    render json: GetGoogleRestaurantDetailsService.new(params[:id]).call
  end
end