class Animal < ApplicationRecord
  has_many :sponsorships
  has_many :sponsors, through: :sponsorships
end
