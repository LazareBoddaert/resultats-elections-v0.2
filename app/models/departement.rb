class Departement < ApplicationRecord
  belongs_to :region
  has_many :communes
end
