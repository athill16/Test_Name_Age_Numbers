require 'sinatra'

class MyApp < Sinatra::Base

	enable :sessions


	get '/' do
		erb :name_number_game
	end

	post '/input' do	
		session[:name] = params[:user_name]
		erb :get_age, :locals => {:name => session[:name]}
	end 

	post '/age' do
		session[:age] = params[:user_age]
		erb :favorite_numbers, :locals => {:age => session[:age], :name => session[:name]}
	end 

	post '/favorite_numbers' do
		favorite_numbers1 = params[:user_fav_number1]
		favorite_numbers2 = params[:user_fav_number2]
		favorite_numbers3 = params[:user_fav_number3]
		sum  = favorite_numbers1.to_i + favorite_numbers2.to_i + favorite_numbers3.to_i
			if sum < session[:age].to_i
				erb :sum, :locals => {:name => session[:name], :sum => sum, :fav1 => favorite_numbers1, :fav2 => favorite_numbers2, :fav3 => favorite_numbers3, :result => "Sum is less than age."}
			else
				erb :sum, :locals => {:name => session[:name], :sum => sum, :fav1 => favorite_numbers1, :fav2 => favorite_numbers2, :fav3 => favorite_numbers3, :result => "Sum is greater than age."}
			end 
	end

end


	




