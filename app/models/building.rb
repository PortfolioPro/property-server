class Building < ApplicationRecord
  has_many :apartments, -> {order "unit ASC"}
end
