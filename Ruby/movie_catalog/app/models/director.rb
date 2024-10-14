class Director < ApplicationRecord
  belongs_to :favorite_genre, class_name: 'Genre', foreign_key: 'favorite_genre_id'
  has_many :movies
  validates :name, :nationality, :birthdate, :favorite_genre, presence: true
end


