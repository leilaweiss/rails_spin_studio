class User < ApplicationRecord
  belongs_to :studio #=> adds validation that says you HAVE to have a sutdio_id in Rails 5 (unless we disabled it, like we did)
  has_many :reservations
  has_many :spin_classes, through: :reservations
end
