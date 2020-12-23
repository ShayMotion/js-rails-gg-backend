class GuitarsController < ApplicationController
  before_action :set_params, only: [:destroy]

  def index
    render json: Guitar.all
  end

  def create
    @guitar = Guitar.new(guitar_params)

    if guitar.save
    render json: @guitar, status: 200
  end

  def destroy
    @guitar.destroy
    render json: @guitar, status: 200
  end

  private

  def set_params
    @guitar = Guitar.find(params[:id])
  end

  def guitar_params
    params.require(:guitar).permit(:brand)
  end
end
 