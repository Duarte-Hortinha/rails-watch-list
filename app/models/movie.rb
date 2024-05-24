class Movie < ApplicationRecord
  validates :title, :overview, presence: true, uniqueness: true
  validates_presence_of :overview
  has_many :bookmarks
end
