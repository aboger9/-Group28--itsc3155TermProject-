class Review < ApplicationRecord
  belongs_to :user
  validates :title, length: { minimum: 5 }
  validates :body, length: { minimum: 10 }
end
