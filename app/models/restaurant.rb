class Restaurant < ActiveRecord::Base

  has_many :reviews, dependent: :destroy

  CATEGORIES = %w(chinese italian japanese french belgian)
  validates :name, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
