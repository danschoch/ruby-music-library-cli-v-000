class Song
  attr_accessor :name

  @@all = []

  def initialize(name)
    self.name = name
  end

  def method_name

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
