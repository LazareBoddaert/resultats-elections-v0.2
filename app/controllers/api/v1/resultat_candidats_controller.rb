class Api::V1::ResultatCandidatsController < ApplicationController
  def index
    @resultat_candidats = ResultatCandidat.all
    render json: @resultat_candidats, status: 200
  end

  def show
    @resultat_candidat = ResultatCandidat.find(params[:id])
    render json: @resultat_candidat, status: 200
  end

  def create
    @resultat_candidat = ResultatCandidat.new(resultat_candidats_params)
    @resultat_candidat.save
    render json: @resultat_candidat, status: 200
  end

  private

  def resultat_candidats_params
    params.require(:resultat_candidat).permit(:score_candidat, :candidat_id, :resultat_commune_id)
  end
end
