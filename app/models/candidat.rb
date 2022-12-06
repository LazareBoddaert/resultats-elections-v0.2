class Candidat < ApplicationRecord
  belongs_to :formation_politique, optional: true
  has_many :resultat_candidats
  has_many :resultat_communes, through: :resultat_candidats # ???
end
