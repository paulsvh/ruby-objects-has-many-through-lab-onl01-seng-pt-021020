class Genre
  attr_accessor :name, :artist, :genre
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


end
