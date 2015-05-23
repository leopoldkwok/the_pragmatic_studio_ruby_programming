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

def weekday
	current_time = Time.new
	today = current_time.strftime("%A")
end

def movie_listing(title, rank=0)
	"#{weekday.upcase}: #{title.capitalize} has a rank of #{rank}."
end



puts movie_listing("goonies", 10)
puts movie_listing("ghostbusters, 9")

a_title = "goldfinger" #local variable
puts movie_listing(a_title)

