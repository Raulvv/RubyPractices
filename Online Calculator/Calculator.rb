require 'sinatra'
require 'sinatra/reloader'

operator = ""

get '/' do
	erb :indexCalculator
end

post '/:operator' do
	operator = params[:operator]
	case operator
		when "add"
			@tipo = "suma"
			@result = params[:num1].to_i + params[:num2].to_i
		when "substract"
			@tipo = "resta"
			@result = params[:num3].to_i + params[:num4].to_i
		when "multiply"
			@tipo = "multiplicacion"
			@result = params[:num5].to_i + params[:num6].to_i
		when "divide"
			@tipo = "division"
			@result = params[:num7].to_i + params[:num8].to_i
	end
	erb :results
end