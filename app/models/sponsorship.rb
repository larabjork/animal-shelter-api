class Sponsorship < ApplicationRecord
  belongs_to :animal
  belongs_to :sponsor
end
