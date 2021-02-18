class Person < ApplicationRecord
  validates :name, :house, presence: true
  belongs_to :house,
    primary_key: :id,
    foreign_key: :hous_id,
    class_name: :House
end