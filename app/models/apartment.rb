class Apartment < ApplicationRecord
  belongs_to :building
  has_many :tenants

  validates :rent,
  presence: true,
  numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0,
    less_than_or_equal_to: 2000
  }
end
