class Api::V1::RegionsController < ApplicationController
  def index
    @regions = Region.all
    render json: @regions, status: 200
  end

  def show
    @region = Region.find(params[:id])
    render json: @region, status: 200
  end

  def create
    @region = Region.new(regions_params)
    @region.save
    render json: @region, status: 200
  end

  private

  def regions_params
    params.require(:region).permit(:nom, :nation_id)
  end
end
