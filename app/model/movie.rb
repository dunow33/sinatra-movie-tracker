class Movie < ActiveRecord::Base
    belongs_to :user
    validates :title, :category, :rating, :my_rating, presence: true
    validates :title, length: { minimum: 3 }
end