class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    self.name = name
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
    Song.new(name, self)
end
