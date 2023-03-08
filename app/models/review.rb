class Review < ApplicationRecord
  validates :content, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, numericality: { less_than_or_equal_to: 5 }
end
