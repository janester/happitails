require 'pry'

class Client
  attr_accessor :name, :age, :num_kids, :num_pets

  def initialize(name, age, num_kids, num_pets)
    @name = name
    @age = age
    @num_kids = num_kids
    @num_pets = num_pets
  end

  def to_s
    "#{@name} is a #{@age} year-old with #{@num_kids} kids and #{@num_pets} pets."
  end
end

binding.pry