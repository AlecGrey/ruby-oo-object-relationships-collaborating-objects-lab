require_relative './artist.rb'
require_relative './song.rb'
require_relative './mp3_importer.rb'
require 'pry'

music_importer = MP3Importer.new("./spec/fixtures/mp3s")

binding.pry