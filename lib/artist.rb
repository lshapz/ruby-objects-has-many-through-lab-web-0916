class Artist

attr_accessor :songs
attr_reader :name 

def initialize(name)
  @name = name 
  @songs = []
end 

def add_song(song)
  @songs << song
  song.artist = self 
end 

def songs 
  @songs
end 

def genres
  self.songs.map do |x|
    x.genre 
  end 
end 


end 