class Movie < ApplicationRecord
    has_many :reviews
    
    has_one_attached :poster
    
    validates :title, presence: true, length: { minimum: 1 }
    validates :synopsis, presence: true, length: { minimum: 6 }
    validates :director, presence: true
    validates :maRating, presence: true
    validates :releaseDate, presence: true
end
