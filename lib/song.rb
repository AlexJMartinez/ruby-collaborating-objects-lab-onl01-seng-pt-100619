require 'pry'
class Song

attr_accessor :name, :artist

@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def self.new_by_filename(filename)
  split_file = filename.split(" - ")
  song_name = split_file[1]
  new_song = self.new(song_name)
  new_song = Artist.new(split_file[0])
  #artist_name = Artist.new(split_file[0])

  #binding.pry
  #artist_name = split_file[0]
  #new_artist = self.new(artist_name)

end

end
