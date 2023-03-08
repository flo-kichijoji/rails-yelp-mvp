class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true

  validates :rating, presence: true

  # validates :games_played, numericality: { only_integer: true }
  validates :rating, numericality: { only_integer: true }
  # validates :size, inclusion: { in: }
  validates :rating, inclusion: { in: 0..5 }
end
