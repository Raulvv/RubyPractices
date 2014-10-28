class OHash
	def initialize (element)
		puts "Hash:"
		element.each{|key,value| puts " " +"#{key}: #{value}"}
	end
end