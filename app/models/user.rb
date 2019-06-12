# frozen_string_literal: true

class User < ApplicationRecord
  belongs_to :studio
  has_many :reservations
  has_many :spin_classes, through: :reservations
  has_secure_password
end
