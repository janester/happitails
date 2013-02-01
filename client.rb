require 'pry'

class Client
  attr_accessor :name, :age, :num_kids, :pets :gender

  def initialize(name, age, gender, num_kids)
    @name = name
    @age = age
    @gender = gender
    @num_kids = num_kids
    @pets = []
  end

  def to_s
    "#{@name} is a #{@age} year-old with #{@num_kids} kids and #{@pets.count} pets."
  end

  def has_pets?
    @pets.any?
  end

end
