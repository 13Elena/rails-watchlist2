class Movie < ApplicationRecord
has_many :bookmarks
belongs_to :lists, through: :bookmarks
before_destroy :check_bookmarks
validates :title, presence: true




  # def check_bookmarks
  #   @movie = Movie.find(params[:id])
  #   unless @movie.bookmarks.empty?
  #     @movie.destroy
  # end

end
