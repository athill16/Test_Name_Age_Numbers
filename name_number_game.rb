
def get_name_age_number
	puts "What is your name?"
		name = gets.chomp
	puts "So, #{name}, how old are you?"
		age = gets.chomp
	puts "#{name}, congratulations, you are #{age} years young!!!"
	puts "#{name}, what's your favorite number?"
		number1 = gets.chomp
		result1 = number1.to_i
	puts "What's your next favorite number?"
		number2 = gets.chomp 
		result2 = number2.to_i
	puts "What's your third favorite number?"
		number3 = gets.chomp
		result3 = number3.to_i
	final_result = [result1,result2,result3].reduce(0,&:+)
		puts "#{name}, you are #{age} years of age, and the sum of your 3 favorite numbers is #{final_result}."
			if final_result > age.to_i
			puts "#{name}, at least you're younger than the sum of your favorite numbers! Way to go!"
		else
			puts "Too bad #{name}, you're at least as old as the sum of your favorite numbers or way past! Sorry:("
		end 

end

get_name_age_number 	
	 