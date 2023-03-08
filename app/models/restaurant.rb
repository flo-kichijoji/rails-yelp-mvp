class Restaurant < ApplicationRecord
  categories = %w[chinese italian japanese french belgian]

  belongs_to :restaurant

  validates :name, :address, presence: true
  validates :category, acceptance: { accept: categories }
end
