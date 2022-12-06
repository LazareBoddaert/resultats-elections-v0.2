class Region < ApplicationRecord
  belongs_to :nation
  has_many :departements
end
