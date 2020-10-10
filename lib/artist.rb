require 'pry'

class Artist

    attr_accessor :name

    @@all = []

    # ~~ CLASS METHODS ~~ #

    def self.all
        @@all
    end

    def self.find_or_create_by_name(artist_name)
        name = self.all.find {|artist_obj| artist_obj.name == artist_name}
        name ? name : Artist.new(artist_name)
    end

    # ~~ INSTANCE METHODS ~~ #

    def initialize(name)
        @name = name
        save
    end

    def save
        @@all << self
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song(song_obj)
        song_obj.artist = self
    end

    def print_songs
        self.songs.each {|song| puts "#{song.name}"}
    end

end