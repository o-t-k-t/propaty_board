class ClosestStation < ApplicationRecord
  belongs_to :propaty

  validates :route_name, presence: true, length: { maximum: 256 }
  validates :station_name, presence: true, length: { maximum: 256 }
  validates :to_closest_station_min, presence: true
end
