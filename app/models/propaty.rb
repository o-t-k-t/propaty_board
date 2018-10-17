class Propaty < ApplicationRecord
  MAX_CLOSEST_STATIONS = 2

  has_many :closest_stations, dependent: :destroy, inverse_of: :propaty
  accepts_nested_attributes_for :closest_stations,
                                allow_destroy: true,
                                update_only: true

  validates :name, presence: true, length: { maximum: 256 }
  validates :rent, presence: true
  validates :address, presence: true, length: { maximum: 256 }, uniqueness: true
  validates :age, presence: true
  validates :note, length: { maximum: 256 }

  def build_closest_stations
    MAX_CLOSEST_STATIONS.times do |num|
      closest_stations[num] || closest_stations.build
    end
  end
end
