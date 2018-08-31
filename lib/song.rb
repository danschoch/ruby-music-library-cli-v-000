class Song
  attr_accessor :name

  def initialize(name)
    self.name = name
    @@all << self
  end
