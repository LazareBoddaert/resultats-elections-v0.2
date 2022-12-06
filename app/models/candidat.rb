class Candidat < ApplicationRecord
  belongs_to :formation_politique
  has_many :resultat_candidats
end
