require "pry"

class Shelter
  attr_accessor :animals, :clients, :name

  def initialize(name)
    @name = name
    @animals = {}
    @clients = {}
  end

  def animal_adopted(animal_obj, client_obj)
    @animals.delete(animal_obj)
    @clients[client_obj].pets << animal_obj
  end

  def animal_donated(animal_obj,client_obj)
    @clients[client_obj].pets.pop
    @animals[animal_obj] = animal_obj
  end

  def show_animal_list()
    puts @animals.values
  end

   def show_client_list()
    puts @clients.values
   end
end
