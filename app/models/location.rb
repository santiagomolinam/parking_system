#:nodoc:
class Location < ActiveRecord::Base
  has_many :slots

end
# rails g migration AddMaxSlotsToLocation max_slots: integer
