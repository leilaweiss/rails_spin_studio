class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :spin_class

  validates_presence_of :spin_class_id
  # scope :user_reservation, ->(user) { where(user_id: user) }
end
