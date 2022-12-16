class Agent < ApplicationRecord
  belongs_to :mairie
  # has_and_belongs_to_many :recensements
  has_many :detail_recensements
  has_many :recensements, through: :detail_recensements
  has_many :familles, through: :detail_recensements
  has_many :photos, as: :photo
end
