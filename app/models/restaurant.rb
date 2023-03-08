class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true

  validates :address, presence: true

  validates :phone_number, presence: true

  validates :category, presence: true

  # validates :size, inclusion: { in: }
  validates :category, inclusion: { in: %w[chinese italian japanese belgian french] }
end
