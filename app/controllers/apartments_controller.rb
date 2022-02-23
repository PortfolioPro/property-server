class ApartmentsController < ApplicationController
  before_action :set_apartment, only: [:show, :update]

  def index
    @building = Building.find(params[:building_id])
    @apartments = @building.apartments
    render json: @apartments
  end

  def show
    render json: @apartment
  end

  def update
    if @apartment.update(apartment_params)
      render json: {show: true, message: "Apartment \"#{@apartment.unit}\" was successfully updated!"}
    else
      render json: @apartment.errors
    end
  end

  private
  def set_apartment
    @apartment = Apartment.find(params[:id])
  end

  def apartment_params
    params.require(:apartment).permit(:rent)
  end
end
