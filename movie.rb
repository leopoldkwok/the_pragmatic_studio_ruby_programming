class Movie

	attr_accessor :title
	attr_reader :rank

	def initialize(title, rank=0)
		@title = title.capitalize
		@rank = rank
		# puts "Created a movie object with title #{title} and rank #{rank}"
	end

	def normalized_rank
		@rank / 10
	end

	def thumbs_up
		@rank +=1
	end

	def thumbs_down
		@rank -=1
		# @rank = @rank - 1 same as above
	end

	def to_s
		"#{@title} has a rank of #{@rank}"
	end

end

if __FILE__ == $0 #only run these code in this file.

	movie = Movie.new("goonies", 10)
	puts movie.title
	puts movie.rank

	movie.thumbs_up
	movie.thumbs_up
	puts movie.rank
	 
	movie.thumbs_down
	puts movie.rank
	puts movie 
end