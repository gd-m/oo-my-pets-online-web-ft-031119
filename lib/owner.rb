class Owner
  # code goes here
  attr_accessor :name, :mood
  attr_reader :species

  @@all =[]
  @@count = 0
  @@pets = Hash[:cats => [], :dogs => [], :fishes =>[]]

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
    @@pets
  end

  def buy_fish(fish)
    @@pets[:fishes] << Fish.new(fish)
  end

  def buy_cat(cat)
    @@pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    @@pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    @@pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @@pets[:cats].each {|cat| cat.mood = "happy"}
    
  end


end
