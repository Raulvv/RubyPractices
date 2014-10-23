require 'sinatra'
require 'sinatra/reloader'
require_relative 'SongList'

songList = SongList.new
list = []

get '/' do
	@list = list
	erb :indexSpotynatra
end

post '/songs/new' do
	songList.addSong(params[:title], params[:author])
	list = songList.viewSongs
	if list.length>10
		redirect to('/enough')
	end
	redirect to('/')
end

get '/enough' do
	erb :enough 
end