class Review < ApplicationRecord
  belongs_to :user
  belongs_to :movie
  
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 5 }
  validates :rating, presence: true
  validates :date, presence: true
end
