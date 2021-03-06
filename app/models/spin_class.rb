# frozen_string_literal: true

class SpinClass < ApplicationRecord
  belongs_to :studio
  has_many :reservations, dependent: :destroy
  has_many :users, through: :reservations
  validates :name, presence: true

  def attendees
    reservations.sum(:guests)
  end
end
