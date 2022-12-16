class Mairie < ApplicationRecord
    has_many :communes
    has_many :agents
end
