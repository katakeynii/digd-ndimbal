class Membre < ApplicationRecord
  belongs_to :famille
  validates :prenom, :nom, :date_naissance, presence: true
  str_enum :type_membre, [:papa, :maman, :enfant, :autres]
  str_enum :sexe, [:masculin, :feminin]

  validate :verification_papa
  validate :verification_maman
  validate :validation_sexe
  
  has_many :photos, as: :photo
  def validation_sexe
    if papa? && feminin?
      errors.add(:sexe, "Le papa ne peut pas etre au feminin")
    end
    if maman? && masculin?
      errors.add(:sexe, "Maman ne peut pas etre au masculin")
    end
  end
  
  def verification_papa
    papa = famille.membres.find_by(type_membre: 'papa')
    if papa? && !papa.nil?
      errors.add(:type_membre, "On ne peut avoir deux papas dans une famille")
    end
  end

  def verification_maman
    nb_maman = famille.membres.where(type_membre: 'maman').count
    if maman? && nb_maman > 4
      errors.add(:type_membre, ": On est dans une famille normale : Max 4 femmes")
    end
  end

end
