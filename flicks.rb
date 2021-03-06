# puts "Mikey loves Goonies"
# puts "Mikey's favourite movie is Goonies"

# movie = 'Goonies'
# puts "Mikey's favourite movie is #{movie}" 

# rank = 10

# puts "#{movie} has a \trank of \n#{rank * 2}"

# title1 = "goonies"
# rank1 = 10
# puts "#{title1.capitalize} has a rank of #{rank1}."

# title2 = "ghostbusters"
# rank2 = 9
# puts "#{title2.capitalize} has a rank of #{rank2}."

# title3 = "goldfinger"
# rank3 = 8
# puts "#{title3.capitalize} has a rank of #{rank3}."


# a method is like a black box

# def weekday
# 	current_time = Time.new
# 	today = current_time.strftime("%A")
# end

# def movie_listing(title, rank=0)
# 	"#{weekday.upcase}: #{title.capitalize} has a rank of #{rank}."
# end



# puts movie_listing("goonies", 10)
# puts movie_listing("ghostbusters, 9")

# a_title = "goldfinger" #local variable
# puts movie_listing(a_title)

# class Movie

# 	attr_accessor :title
# 	attr_reader :rank

	# same as the attr_reader :title
	# def title
	# 	@title
	# end

	# same as the attr_writer :title
	# def title=(new_title)
	# 	@title = new_title
	# end


# 	def initialize(title, rank=0)
# 		@title = title.capitalize
# 		@rank = rank
# 		# puts "Created a movie object with title #{title} and rank #{rank}"
# 	end

# 	def normalized_rank
# 		@rank / 10
# 	end

# 	def thumbs_up
# 		@rank +=1
# 	end

# 	def thumbs_down
# 		@rank -=1
# 		# @rank = @rank - 1 same as above
# 	end


# 	def to_s
# 		"#{@title} has a rank of #{@rank}"
# 	end

# end

# movie1 = Movie.new("goonies", 100)
# movie1.thumbs_up
# puts movie1
# puts movie1.title
# movie1.title = "Gooneys!"
# puts movie1.title
# puts movie1.normalized_rank
# puts movie1.rank

# movie2 = Movie.new("ghostbusters", 9)
# movie2.thumbs_down
# puts movie2


# movie3 = Movie.new("goldfinger")
# puts movie3


# movie2 = Movie.new("ghostbusters", 9)

# movie1 = Movie.new
# puts movie1.object_id

# movie2 = Movie.new
# puts movie2.object_id


# Session 9 Arrays

# movie1 = Movie.new("goonies", 10)
# movie2 = Movie.new("ghostbusters", 9)
# movie3 = Movie.new("goldfinger")

# movies = [movie1, movie2, movie3]

# puts movies

# movies.each do |m|
# 	m.thumbs_up
# 	puts m
# end

# session 10 - objects interacting

# class Playlist
# 	def initialize(name)
# 		@name = name
# 		@movies = []
# 	end

# 	def add_movie(movie)
# 		@movies << movie
# 	end

# 	def play
# 		puts "#{@name}'s playlist:"
# 		puts @movies
# 		@movies.each do|movie|
# 			movie.thumbs_up
# 			puts movie
# 		end

# 	end

# end

# require_relative 'movie'
require_relative 'playlist'
require_relative 'movie3d'


movie1 = Movie.new("goonies", 10)
movie2 = Movie.new("ghostbusters", 9)
movie3 = Movie.new("goldfinger")

playlist = Playlist.new("Kermit")
playlist.load(ARGV.shift || "movies.csv")
movie3d = Movie3D.new('glee',5,20)
playlist.add_movie(movie3d)

loop do 
	puts "\nHow many viewings? ('quit' to exit)"
	answer = gets.chomp.downcase
	case answer
	when /^\d+$/ #match the characters to a number
		playlist.play(answer.to_i)
	when 'quit', 'exit'
		playlist.print_stats 
		break
	else
		puts "Please enter a number or 'quit'"
	end
end

playlist.save


# playlist.add_movie(movie1)
# playlist.add_movie(movie3)
# playlist.add_movie(movie2)



# playlist1.print_stats

# puts "How many viewings?"
# answer = gets.chomp
# puts "Enjoy your #{answer} viewings.."
# playlist1.play
# playlist2 = Playlist.new("Fozzie")
# playlist2.add_movie(movie3)

# movie4 = Movie.new("gremlins", 15)
# playlist2.add_movie(movie4)
# playlist2.play