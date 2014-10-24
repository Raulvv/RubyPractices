require 'sinatra'
require 'sinatra/reloader'

get '/' do
	erb :indexCalculator
end

post '/adding' do
	@tipo = "suma"
	@result = params[:num1].to_i + params[:num2].to_i
	erb :results
end

post '/substracting' do
	@tipo = "resta"
	@result = params[:num3].to_i - params[:num4].to_i
	erb :results
end

post '/multiplying' do
	@tipo = "multiplicacion"
	@result = params[:num5].to_i * params[:num6].to_i
	erb :results
end

post '/dividing' do
	@tipo = "division"
	@result = params[:num7].to_i / params[:num8].to_i
	erb :results
end