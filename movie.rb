class Movie

	attr_accessor :title
	attr_reader :rank

	def initialize(title, rank=0)
		@title = title.capitalize
		@rank = rank
		@snack_carbs = Hash.new(0)
		# puts "Created a movie object with title #{title} and rank #{rank}"
	end

	def each_snack
		@snack_carbs.each do |name, carbs|
			snack = Snack.new(name, carbs)
			yield snack 
		end


	end

	def ate_snack(snack)
		@snack_carbs[snack.name] += snack.carbs
		puts "#{@title} led to #{snack.carbs} #{snack.name} carbs being consumed."
		puts "#{@title}'s snacks: #{@snack_carbs}"
	end


	def carbs_consumed
		@snack_carbs.values.reduce(0, :+)
	end

	def hit?
		@rank >=10
	end

	def status
		hit? ? "Hit" : "Flop"
	end

		# if hit?
		# 	"Hit"
		# else
		# 	"Flop"
		# end


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

	def <=>(other_movie)
		other_movie.rank <=> @rank
	end

	def to_s
		"#{@title} has a rank of #{@rank} (#{status})"
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