class Review < ApplicationRecord
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: 0..5 }
  belongs_to :restaurant
  validates :restaurant_id, presence: true
end
