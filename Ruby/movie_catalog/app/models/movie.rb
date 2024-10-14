class Movie < ApplicationRecord
  belongs_to :director
  belongs_to :genre
  validates :title, :release_year, :synopsis, :country, :duration, :director, :genre, presence: true
end
