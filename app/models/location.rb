#:nodoc:
class Location < ActiveRecord::Base
  validates :address, presence: true

  has_many :slots

  after_validation :geocode, if: -> (obj) { obj.address.present? && obj.address_changed? }
  geocoded_by :address
  reverse_geocoded_by :latitude, :longitude
end
# rails g migration AddMaxSlotsAddressToLocation max_slots:integer address:string
# rails g migration RemoveMaxSlotsFromLocation max_slots
# rails g migration AddKeywordsSizeToProduct keywords:string size:string
