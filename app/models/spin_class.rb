# frozen_string_literal: true

class SpinClass < ApplicationRecord
  belongs_to :studio
  has_many :reservations
  has_many :users, through: :reservations
  validates :name, presence: true

  def attendees
    reservations.pluck(:guests).inject(:+)
  end
end
