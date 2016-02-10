class Restaurant < ActiveRecord::Base
  CATEGORIES = %w(chinese italian japanese french belgian)
  validates :name, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
