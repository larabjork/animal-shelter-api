class Sponsor < ApplicationRecord
  has_many :sponsorships
  has_many :animals, through: :sponsorships
  validates :sponsor_name, presence: true
end
