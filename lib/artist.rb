class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    self.name = name
    self.songs = []
  end

  def self.create(name)
    new_instance = self.new(name)
    new_instance.save
    new_instance
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

  def add_song(name)
    self.songs << Song.new(name, self)
  end
end
