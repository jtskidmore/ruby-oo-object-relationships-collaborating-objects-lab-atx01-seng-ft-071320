require 'pry'

class Artist

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    Song.all.each do |songie|
      if songie == song
        song.artist = self
      end
    end
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.find_or_create_by_name (name)
    @@all.each do |artist|
      if artist.name == name
        return artist
      end
    end
    Artist.new(name)
  end

  def print_songs
    Song.all.each do |song|
      if song.artist == self
        puts song.name
      end
    end
  end

end
