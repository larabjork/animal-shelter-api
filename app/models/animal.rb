class Animal < ApplicationRecord
  validates :name, presence: true
  validates :date_available, presence: true
  validates :breed, presence: true
  validates :sex, presence: true
  validates :color, presence: true
  validates :location, presence: true
  validates :profile, presence: true
  validates :picture, presence: true
  validates :age, presence: true
  validates :weight, presence: true
  validates :kennel, presence: true
end
