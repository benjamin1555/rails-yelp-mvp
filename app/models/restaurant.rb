class Restaurant < ApplicationRecord
  CATEGORIES = %w[chinese italian japanese french belgian]
  has_many :reviews, dependent: :destroy
  validates :name, :address, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
