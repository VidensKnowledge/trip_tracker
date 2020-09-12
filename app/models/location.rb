class Location < ApplicationRecord
  has_many :Addresses
  belongs_to :trip
end
