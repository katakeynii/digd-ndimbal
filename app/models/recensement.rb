class Recensement < ApplicationRecord
    has_and_belongs_to_many :agents
end
