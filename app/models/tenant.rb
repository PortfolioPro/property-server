class Tenant < ApplicationRecord
  belongs_to :apartment

  validates :name,
  presence: true,
  length: {
    minimum: 2,
    maximum: 20
  }

  validates :email,
  presence: true,
  length: {
    minimum: 12,
    maximum: 30
  },
  format: {
    with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  },
  uniqueness: true
end
