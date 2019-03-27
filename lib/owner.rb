class Owner
  # code goes here
  attr_accessor :name
  attr_reader :species

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
    @@count = 0
    @@all.clear
  end

  def say_species
    return "I am a #{@species}."
  end

  def pets
    pets = Hash["cats" => [], "dogs" => [], "fishes" =>[]]

  end

end
