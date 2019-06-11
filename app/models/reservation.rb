class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :spin_class
  # scope :user_reservation, ->(user) { where(user_id: user) }
end
