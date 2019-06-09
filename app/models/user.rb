class User < ApplicationRecord
  belongs_to :studio
  has_many :reservations
  has_many :spin_classes, through: :reservations
end
