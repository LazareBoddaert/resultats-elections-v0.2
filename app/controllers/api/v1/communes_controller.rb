class Api::V1::CommunesController < ApplicationController
  def index
    @communes = Commune.all
    render json: @communes, status: 200
  end

  def show
    @commune = Commune.find(params[:id])
    render json: @commune, status: 200
  end

  def create
    @commune = Commune.new(communes_params)
    @commune.save
    render json: @commune, status: 200
  end

  private

  def communes_params
    params.require(:commune).permit(:nom, :nom_formate, :departement_id)
  end
end
