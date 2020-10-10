require 'pry'

class MP3Importer

    attr_accessor :path

    def initialize(filepath)
        @path = filepath
    end

    def files
        # loads all the mp3 files in the path directory
        Dir.entries(@path).select {|file| file.include? "mp3"}
    end

    def import
        self.files.each do |file|
            Song.new_by_filename(file)
        end
    end

end