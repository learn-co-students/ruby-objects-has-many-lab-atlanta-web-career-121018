class Song
  attr_accessor :name, :artist
  #putting artist here allows you to call artist method from other file i think?

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    #pushes each song that is created into class var @@all
  end

  def self.all
    @@all
  end

  def artist_name
    if artist != nil
      self.artist.name
    end
    #if the artist is not nil, return self.artist.name
  end
end
