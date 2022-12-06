class Api::V1::NationsController < ApplicationController
  def index
    @nations = Nation.all
    render json: @nations, status: 200
  end

  def show
    @nation = Nation.find(params[:id])
    render json: @nation, status: 200
  end

  def create
    @nation = Nation.new(nations_params)
    @nation.save
    render json: @nation, status: 200
  end

  private

  def nations_params
    params.require(:nation).permit(:nom)
  end
end
