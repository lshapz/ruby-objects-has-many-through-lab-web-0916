class Genre

  attr_accessor :songs, :artists
  attr_reader :name

  def initialize(name)
    @name = name
    @songs = []
  end 

  def add_song(song)
    self.songs << song 
  end 

  def songs
    @songs
  end


def artists
  self.songs.map do |x|
    x.artist 
  end 
end  

end 