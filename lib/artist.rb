require "pry"
class Artist
  attr_accessor :name, :songs

  @@song_count = 0
  #class variable that goes up by 1 each time a song is created

  def initialize(name)
    @name = name
    @songs = []
    #empty instance variable that songs are shoveled into when created
  end

  def songs
    @songs
    #have to be able to call method .songs to see array
  end

  def add_song(song)
    @songs << song
    song.artist = self
    #call artist= method in the song that is being passed in as an argument and set it equal to self (the artist)
    @@song_count += 1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end
end
