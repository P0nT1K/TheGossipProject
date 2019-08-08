class CitiesController < ApplicationController
  before_action :authenticate_user, only: [:index]
  def index
    @city = City.all
  end
  def show
    @city = City.find(params[:id])
    
  end
end
