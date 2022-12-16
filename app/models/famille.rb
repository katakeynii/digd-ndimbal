class Famille < ApplicationRecord
  belongs_to :commune
  has_many :detail_recensements
  has_many :recensements, through: :detail_recensements
  has_many :membres
end
