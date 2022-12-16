class DetailRecensement < ApplicationRecord
  belongs_to :recensement
  belongs_to :famille
  belongs_to :agent
end
