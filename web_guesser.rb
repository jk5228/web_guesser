require 'sinatra'
require 'sinatra/reloader'

mynum = rand(100)
get '/' do
	"The secret number is " + mynum.to_s
end