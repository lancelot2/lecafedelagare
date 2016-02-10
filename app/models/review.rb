class Review < ActiveRecord::Base
  belongs_to :restaurant

  RATINGS = %w(0 1 2 3 4 5)
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, inclusion: { in: RATINGS }
end
