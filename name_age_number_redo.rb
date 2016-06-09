require_relative "helper_functions.rb"

def start_questions
	get_name
	get_age
	get_favorite_numbers
	sum_to_age_comparison

end

def get_name
 	puts "What is your name?"
 	@name = gets.chomp
 	@name
end

def get_age
	puts "Hi #{@name}, how old are you?"
	@age = gets.chomp
	@age
end

def get_favorite_numbers
	@favorite_numbers = []
	puts "Ok, #{@name}, you're #{@age} years young! What are your 3 favorite numbers?"
	3.times do
		answer = gets.chomp
		@favorite_numbers << answer.to_i
	end
@favorite_numbers
end

def sum_to_age_comparison
	sum = sum(@favorite_numbers[0],@favorite_numbers[1],@favorite_numbers[2])
	#sum = @favorite_numbers[0] + @favorite_numbers[1] + @favorite_numbers[2]
		if sum < @age.to_i
	 		puts "Well #{@name}, the sum of your favorite numbers #{@favorite_numbers[0]}, #{@favorite_numbers[1]},  and #{@favorite_numbers[2]} is #{sum}, and that is less than your age of #{@age}!"
	 	elsif sum > @age.to_i
	 		puts "Well #{@name}, the sum of your favorite numbers #{@favorite_numbers[0]}, #{@favorite_numbers[1]}, and #{@favorite_numbers[2]} is #{sum}, and that is greater than your age of #{@age}!"
	 	else
	 		puts "Well, #{@name}, your age of #{@age} is exactly equal to your sum of #{sum}!"
	 	end
end 

start_questions

