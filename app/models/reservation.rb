class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :spin_clas
end
