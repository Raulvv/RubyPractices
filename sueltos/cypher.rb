#Caesar Cypher long and easily way
class Cypher

	def cypherCaesar(character, shift=-1)
		if (character != " ")
			char = character.ord
			char += shift
			char.chr
		else
			" "
		end
	end

	def convertString (word)
		for letra in 0..word.length-1
			word[letra] = cypherCaesar(word[letra])
		end

		word
	end
end

codifiedWord = gets.chomp
cypher = Cypher.new
puts cypher.convertString(codifiedWord)

#Caesar Cypher short way, made by Enumerables
unCodifiedWord = gets.chomp
(0..unCodifiedWord.length-1).each{|a| print ((unCodifiedWord[a].ord)+1).chr}