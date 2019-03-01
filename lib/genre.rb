require 'pry'
class Genre
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select {|element| element.genre == self}
  end
  
  def artists
    Song.all.map {|element| element.artist}
  end
end