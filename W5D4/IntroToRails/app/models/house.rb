class House < ApplicationRecord
  validates :address, presence: true
  has_many :residents,
    primary_key: :id,
    foreign_key: :hous_id,
    class_name: :Person
end