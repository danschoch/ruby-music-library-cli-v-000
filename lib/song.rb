class Song
  attr_accessor :name

  @@all = []

  def initialize(name)
    self.name = name
  end

  def self.create(name)
    new_song = self.new(name)
    new_song.save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.destroy_all
    @@all.clear
  end
end
