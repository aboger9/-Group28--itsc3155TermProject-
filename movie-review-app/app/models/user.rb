class User < ApplicationRecord
    has_many :reviews
    
    validates :username, presence: true
    validates :password, presence: true, length: { minimum: 5 }
end
