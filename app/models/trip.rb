class Trip < ApplicationRecord
  belongs_to :user
<<<<<<< HEAD
  has_many :locations
=======
  has_many :locations #, dependent: destroy
>>>>>>> 82385c15be26b5345fa3dca1e4d875944344ffdd
end
