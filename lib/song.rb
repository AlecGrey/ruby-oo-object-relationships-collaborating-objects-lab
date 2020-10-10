require 'pry'

class Song

    attr_accessor :name, :artist, :genre

    @@all = []

    # ~~ CLASS METHODS ~~ #

    def self.all
        @@all
    end

    def self.new_by_filename(filename)
        arr = filename.split(" - ")
        song = Song.new(arr[1])
        song.artist_name = (arr[0])
        song.genre = arr[2].split(".")[0]
        return song
    end

    # ~~ INSTANCE METHODS ~~ #

    def initialize(name)
        @name = name
        save
    end

    def save
        @@all << self
    end

    def artist_name=(artist_name)
        @artist = Artist.find_or_create_by_name(artist_name)
    end

end