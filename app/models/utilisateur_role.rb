class UtilisateurRole < ApplicationRecord
  belongs_to :utilisateur
  belongs_to :role
end
