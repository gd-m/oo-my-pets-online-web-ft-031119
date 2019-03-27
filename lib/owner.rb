class Owner
  # code goes here
  attr_accessor :name, :species

  @@all =[]
  @@count = 0

  def initialize(species)
    @species = species
    @@all << self
    @@count += 1
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    self.species
  end
end
