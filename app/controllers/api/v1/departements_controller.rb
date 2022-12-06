class Api::V1::DepartementsController < ApplicationController
  def index
    @departements = Departement.all
    render json: @departements, status: 200
  end

  def show
    @departement = Departement.find(params[:id])
    render json: @departement, status: 200
  end

  def create
    @departement = Departement.new(departements_params)
    @departement.save
    render json: @departement, status: 200
  end

  private

  def departements_params
    params.require(:departement).permit(:nom, :nom_formate, :numero, :region_id)
  end
end
