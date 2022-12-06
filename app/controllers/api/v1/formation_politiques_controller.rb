class Api::V1::FormationPolitiquesController < ApplicationController
  def index
    @formation_politiques = FormationPolitique.all
    render json: @formation_politiques, status: 200
  end

  def show
    @formation_politique = FormationPolitique.find(params[:id])
    render json: @formation_politique, status: 200
  end

  def create
    @formation_politique = FormationPolitique.new(formation_politiques_params)
    @formation_politique.save
    render json: @formation_politique, status: 200
  end

  private

  def formation_politiques_params
    params.require(:formation_politiques).permit(:nom, :courant_politique_id)
  end
end
