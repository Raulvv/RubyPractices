#Made to order a phrase by each of his words

class WordSort

	def sortPhrase (phrase)
		unsortWords = removePunctuation(phrase)
		unsortWords = unsortWords.split(" ")
		puts unsortWords.sort
	end

	def removePunctuation (string)
		return string.gsub(/[^a-z0-9\s]/i, '')
	end

end
phrase = gets.chomp

word = WordSort.new
word.sortPhrase(phrase)