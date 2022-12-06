class ResultatCommune < ApplicationRecord
  belongs_to :scrutin
  belongs_to :commune
  has_many :resultat_candidats
  has_many :candidats, through: :resultat_candidats

  def abs_prc_inscrit
    pourcentage_inscrit(abstention)
  end

  def votant_prc_inscrit
    pourcentage_inscrit(votant)
  end

  def blancs_prc_inscrit
    pourcentage_inscrit(blancs)
  end

  def blancs_prc_votant
    pourcentage_votant(blancs)
  end

  def nuls_prc_inscrit
    pourcentage_inscrit(nuls)
  end

  def nuls_prc_votant
    pourcentage_votant(nuls)
  end

  def blancs_nuls_prc_inscrit
    pourcentage_inscrit(blancs_nuls)
  end

  def blancs_nuls_prc_votant
    pourcentage_votant(blancs_nuls)
  end

  def exprime_prc_inscrit
    pourcentage_inscrit(exprime)
  end

  def exprime_prc_votant
    pourcentage_votant(exprime)
  end

  private

  def pourcentage_inscrit(valeur_nb)
    @prc_ins = (valeur_nb * 100).fdiv(inscrit)
    @prc_ins.round(2)
  end

  def pourcentage_votant(valeur_nb)
    @prc_votant = (valeur_nb * 100).fdiv(votant)
    @prc_votant.round(2)
  end
end
