class Photo < ApplicationRecord
  belongs_to :photo, polymorphic: true
end
