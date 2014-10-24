class SongList
	attr_accessor :list

	def initialize
		@list = []
	end

	def addSong(title, author)
		@list << [title, author]
	end

	def viewSongs
		return @list
	end
end

