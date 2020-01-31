class Sponsor < ApplicationRecord
  has_many :sponsorships
  has_many :animals, through: :sponsorships
end
