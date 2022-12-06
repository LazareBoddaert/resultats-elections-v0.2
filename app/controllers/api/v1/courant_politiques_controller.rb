class Api::V1::CourantPolitiquesController < ApplicationController
  def index
    @courant_politiques = CourantPolitique.all
    render json: @courant_politiques, status: 200
  end

  def show
    @courant_politique = CourantPolitique.find(params[:id])
    render json: @courant_politique, status: 200
  end

  def create
    @courant_politique = CourantPolitique.new(courant_politiques_params)
    @courant_politique.save
    render json: @courant_politique, status: 200
  end

  private

  def courant_politiques_params
    params.require(:courant_politiques).permit(:nom)
  end
end
