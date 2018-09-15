
class BeerSong

	def initialize
	end

  def verse(nombre)
  	if nombre >= 3
			"#{nombre} bottles of beer on the wall, #{nombre} bottles of beer.\n" \
    	"Take one down and pass it around, #{nombre - 1} bottles of beer on the wall.\n"
		elsif nombre == 2
			"#{nombre} bottles of beer on the wall, #{nombre} bottles of beer.\n" \
    	"Take one down and pass it around, #{nombre - 1} bottle of beer on the wall.\n"
  	elsif nombre == 1
			"#{nombre} bottle of beer on the wall, #{nombre} bottle of beer.\n" \
    	"Take it down and pass it around, no more bottles of beer on the wall.\n"
  	elsif nombre == 0
			"No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
  	end
	end

	def verses(n1, n2)
		if n1-1 == n2
				verse(n1) +"\n"+ verse(n2)
		elsif n1-2 == n2
			verse(n1) +"\n"+ verse(n1-1) +"\n"+ verse(n1-2)
		end
	end

	def lyrics
		#song_end = "    SONG"
		#song_body = "<<-SONG "
		@song_body = verse(99)
		@i = 98
		while @i >= 0 do
			@song_body = @song_body + "\n" + verse(@i)
			@i = @i-1
		end
		#song = song_start << song_body #<< song_end
		return @song_body
	end
end

class BookKeeping
	VERSION = 2
end
