class Slot < ActiveRecord::Base
  belongs_to :location
  has_many :parkrecords
  has_many :vehicles, through: :parkrecords
end
