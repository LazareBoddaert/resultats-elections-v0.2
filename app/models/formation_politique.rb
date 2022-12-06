class FormationPolitique < ApplicationRecord
  belongs_to :courant_politique
  has_many :candidats
end
