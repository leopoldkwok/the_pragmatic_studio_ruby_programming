require_relative 'movie' #looks for movie file in the same directory

class Playlist
	def initialize(name)
		@name = name
		@movies = []
	end

	def add_movie(movie)
		@movies << movie
	end

	def play(number_rolled)
		puts "#{@name}'s playlist:"
		puts @movies

		@movies.each do|movie|
			movie.thumbs_up
			puts movie
		end
	end
end