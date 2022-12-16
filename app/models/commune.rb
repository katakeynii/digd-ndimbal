class Commune < ApplicationRecord
  belongs_to :mairie
  has_many :familles
end
