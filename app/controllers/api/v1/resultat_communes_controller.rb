class Api::V1::ResultatCommunesController < ApplicationController
  def index
    @resultat_communes = ResultatCommune.all
    render json: @resultat_communes, status: 200
  end

  def show
    @resultat_commune = ResultatCommune.find(params[:id])
    render json: @resultat_commune, status: 200
  end

  def create
    @resultat_commune = ResultatCommune.new(resultat_communes_params)
    @resultat_commune.save
    render json: @resultat_commune, status: 200
  end

  private

  def resultat_communes_params
    params.require(:resultat_commune).permit(:commune_id,
                                             :scrutin_id,
                                             :inscrit,
                                             :abstention,
                                             :votant,
                                             :blancs,
                                             :nuls,
                                             :blancs_nuls,
                                             :exprime)
  end
end
