require 'pry'
class Artist
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end
  
  def songs
    Song.all.select {|element| element.artist == self}
  end
  
  def genres
    Song.all.map {|element| element.genre}
  end
end