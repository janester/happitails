class Shelter
  attr_accessor :animalList, :clientList

  def initalize(animalList, clientList)
    @animalList = {}
    @clientList = {}
  end

  def