class Movie < ApplicationRecord
    has_many :reviews
    
    has_one_attached :poster
    
    validates :title, presence: true, length: { minimum: 1 }
    validates :synopsis, presence: true, length: { minimum: 6 }
    validates :director, presence: true
    VALID_MARATING_REGEX = /^G|PG|PG-13|R|NC-17$/
    validates :maRating, presence: true, format: { with: VALID_MARATING_REGEX, :multiline => true }
    VALID_DATE_REGEX =  /^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$/
    validates :releaseDate, presence: true, format: { with: VALID_DATE_REGEX, :multiline => true }
end
