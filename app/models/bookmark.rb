class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie
  validates :comment, length: { minimum: 6 }
  validates_presence_of :movie, :list
  validates_uniqueness_of :movie_id, { scope: :list_id } # movie/list pairings are unique
end
