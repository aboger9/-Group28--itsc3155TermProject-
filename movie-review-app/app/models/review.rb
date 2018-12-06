class Review < ApplicationRecord
  belongs_to :user
  belongs_to :movie
  
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 5 }
  VALID_RATING_REGEX = /[1-9]|10/
  validates :rating, presence: true, format: { with: VALID_RATING_REGEX, :multiline => true }
  VALID_DATE_REGEX =  /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/
  validates :date, presence: true, format: { with: VALID_DATE_REGEX, :multiline => true }
end
