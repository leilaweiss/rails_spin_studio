# frozen_string_literal: true

class User < ApplicationRecord
  has_many :reservations
  has_many :spin_classes, through: :reservations
  has_secure_password
end
