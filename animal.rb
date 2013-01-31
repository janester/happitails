require 'pry'


class Animal
  attr_accessor :name, :breed, :age, :gender, :favtoy

  def initialize(name, breed, age, gender, favtoy)
    @name = name
    @breed = breed
    @age = age
    @gender = gender
    @favtoy = favtoy
  end


  def to_s
    "#{@name} is a #{@breed}"
  end


end

binding.pry
