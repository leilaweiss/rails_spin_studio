# frozen_string_literal: true

class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :spin_class
  validates :guests, :numericality => { :greater_than_or_equal_to => 0 }
  validates_presence_of :spin_class_id
  scope :without_guests, -> { where(guests: 0) }
  scope :with_guests, -> { where.not(guests: 0) }
end
