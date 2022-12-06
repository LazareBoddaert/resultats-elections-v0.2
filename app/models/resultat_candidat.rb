class ResultatCandidat < ApplicationRecord
  belongs_to :candidat
  belongs_to :resultat_commune

end

# def score_prc_inscrit(valeur_nb)
#   @prc_ins = (valeur_nb * 100).fdiv(inscrit_nombre)
#   @prc_ins.round(2)
# end

# def score_prc_votant(valeur_nb)
#   @prc_votant = (valeur_nb * 100).fdiv(votant_nombre)
#   @prc_votant.round(2)
# end
