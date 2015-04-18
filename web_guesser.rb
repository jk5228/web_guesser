require 'sinatra'
require 'sinatra/reloader'

NUMBER = rand(100)

def guess_check(guess)
	if guess > NUMBER
		message = "Too high!"
	elsif guess < NUMBER
		message = "Too low!"
	else
		message = "The secret number is " + NUMBER.to_s
	end
end


get '/' do
	guess = params["guess"].to_i
	message = guess_check(guess)
	erb :index, :locals => {:message => message}
end