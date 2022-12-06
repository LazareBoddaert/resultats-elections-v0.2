class Commune < ApplicationRecord
  belongs_to :departement
  has_many :resultat_communes
  has_many :scrutins, through: :resultat_communes
  has_many :resultat_candidats, through: :resultat_communes # ???
  has_many :candidats, through: :resultat_candidats # ???
end
