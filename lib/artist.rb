require 'pry'

class Artist

  attr_accessor :name

  @@all = []

  def initialize (name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def self.find_or_create_by_name (name)
    le_artist = 0
    Artist.all.each do |artist|
      if name == artist.name
        le_artist = artist
      end
    end
    if le_artist == 0
      Artist.new(name)
    elsif le_artist != 0
      le_artist
    end
  end

  def print_songs
  
  end

end
