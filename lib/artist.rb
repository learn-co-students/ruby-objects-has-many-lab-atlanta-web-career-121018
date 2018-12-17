class Artist
    attr_accessor :name, :songs

    @@songs_count = 0

    def initialize (name)
        @name = name
        @songs = []
    end

    def self.songs
        @songs
    end

    def add_song (song)
        @songs << song
        song.artist = self
        @@songs_count += 1
    end

    def add_song_by_name (song_name)
        song =  Song.new(song_name)
        @songs << song
        song.artist = self
        @@songs_count += 1
    end

    def self.song_count
        @@songs_count
    end
end
