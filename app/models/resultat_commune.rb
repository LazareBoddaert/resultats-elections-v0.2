class ResultatCommune < ApplicationRecord
  belongs_to :scrutin
  belongs_to :commune

  def abs_prc_ins
    pourcentage_inscrit(abstention_nombre)
  end

  def votant_prc_ins
    pourcentage_inscrit(votant_nombre)
  end

  def blancs_prc_ins
    pourcentage_inscrit(blancs_nombre)
  end

  def blancs_prc_votant
    pourcentage_votant(blancs_nombre)
  end

  def nuls_prc_ins
    pourcentage_inscrit(nuls_nombre)
  end

  def nuls_prc_votant
    pourcentage_votant(nuls_nombre)
  end

  def blancs_nuls_prc_ins
    pourcentage_inscrit(blancs_nuls_nombre)
  end

  def blancs_nuls_prc_votant
    pourcentage_votant(blancs_nuls_nombre)
  end

  def exprime_prc_ins
    pourcentage_inscrit(exprime_nombre)
  end

  def exprime_prc_votant
    pourcentage_votant(exprime_nombre)
  end

  private

  def pourcentage_inscrit(valeur_nb)
    @prc_ins = (valeur_nb * 100).fdiv(inscrit_nombre)
    @prc_ins.round(2)
  end

  def pourcentage_votant(valeur_nb)
    @prc_votant = (valeur_nb * 100).fdiv(votant_nombre)
    @prc_votant.round(2)
  end
end
