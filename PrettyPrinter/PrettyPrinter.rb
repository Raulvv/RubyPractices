require 'date'
require 'pry'
require_relative 'oString.rb'
require_relative 'oArray.rb'
require_relative 'oFixnum.rb'
require_relative 'oDate.rb'
require_relative 'oObject.rb'
require_relative 'oHash.rb'

class PrettyPrinter

	def print (array)
		array.each do |element|
			self.outputElement(self.verifyClass(element),element)
		end
	end

	def verifyClass (a)
		a.class.to_s
	end

	def outputElement (classType, element)
		typesOfClass = {"Hash" => OHash, "Array" => OArray, "Object" => OObject, "Date" => ODate, "String" => OString, "Fixnum" => OFixnum}
		typesOfClass[classType].new(element)
	end
end

a_hash = {key: "value", other_key: "other_value"}
a_date = Date.today

PrettyPrinter.new.print(["My", 3, a_hash, a_date, ["Pied", "Piper"]])