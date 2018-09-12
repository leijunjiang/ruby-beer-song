#!/usr/bin/env ruby
class BeerSong

	def initialize
	end
=begin
	@@var1 = 99
	@@var2 = 98


	#def onesong(n)
	#	puts "#{n} bottles of beer on the wall, #{n} bottles of beer.
	#	Take one down and pass it around, #{n-1} bottles of beer on the wall."
	#end
  @@i = 99

  		while @@i > 0 do
		   puts "#{@@var1} bottles of beer on the wall, #{@@var1} bottles of beer.
			Take one down and pass it around, #{@@var2} bottles of beer on the wall."
		   @@i = @@i - 1
		   @@var1 -= 1
			 @@var2 -= 1
				end	

=end


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
		song_start = "<<-SONG \n"
		song_end = "SONG"
		song_body = ""
		song_body = 99.downto(0) { |n|  return verse(n) }
		song = song_start << song_body << song_end
	end
end



