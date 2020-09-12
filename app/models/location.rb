class Location < ApplicationRecord
  has_many :addresses
  belongs_to :trip
end
