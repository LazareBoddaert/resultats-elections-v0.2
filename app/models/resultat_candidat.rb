class ResultatCandidat < ApplicationRecord
  belongs_to :candidat
  belongs_to :resultat_commune

  def score_prc_inscrit
    resultat_candidat = ResultatCandidat.find(id)
    resultat_commune_id = resultat_candidat.resultat_commune_id
    inscrit_ville = ResultatCommune.find(resultat_commune_id).inscrit
    @prc_ins = (resultat_candidat.score_candidat * 100).fdiv(inscrit_ville)
    @prc_ins.round(2)
  end

  def score_prc_exprime
    resultat_candidat = ResultatCandidat.find(id)
    resultat_commune_id = resultat_candidat.resultat_commune_id
    exprime_ville = ResultatCommune.find(resultat_commune_id).exprime
    @prc_exprime = (resultat_candidat.score_candidat * 100).fdiv(exprime_ville)
    @prc_exprime.round(2)
  end
end
