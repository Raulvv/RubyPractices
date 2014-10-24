require 'sinatra'
require 'sinatra/reloader'

list = []

get '/' do
	@list = list
	erb :indexSpotynatra
end

post '/songs/new' do
	list << params[:song]
	if list.length>10
		redirect to('/enough')
	end
	redirect to('/')
end

get '/enough' do
	erb :enough 
end