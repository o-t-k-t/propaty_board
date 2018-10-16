class Propaty < ApplicationRecord
  has_many :closest_stations, dependent: :destroy

  validates :name, presence: true, length: { maximum: 256 }
  validates :rent, presence: true
  validates :address, presence: true, length: { maximum: 256 }, uniqueness: true
  validates :age, presence: true
  validates :note, length: { maximum: 256 }
end
