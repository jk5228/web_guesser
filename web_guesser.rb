require 'sinatra'
require 'sinatra/reloader'

mynum = rand(100)
get '/' do
	erb :index
end