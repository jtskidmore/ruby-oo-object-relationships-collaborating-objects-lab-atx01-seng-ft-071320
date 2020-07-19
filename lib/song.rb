require 'pry'

class Song

  @@all = []

  attr_accessor :artist, :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end

  def self.new_by_filename(file_name)
    song_array = file_name.split(/ - /)
    new_song = Song.new(song_array[1])
    new_artist = Artist.find_or_create_by_name(song_array[0])
    new_artist.add_song(new_song)
    new_song
  end

end
