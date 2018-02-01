require 'pry'

class Dog
  attr_accessor :name
  @@all = []

  def initialize(name)
    @@all << self
    @name = name
  end

  def self.clear_all
    @@all = []
  end

  def self.all
    @@all.each do |dog|
      puts dog.name
    end
  end

  def new(name)
    @name = name
    @@all << self
  end
end
