# encoding: utf-8
require_relative 'app'

def assert(truthy)
  raise "Tests failed" unless truthy
end

chef = Chef.find(1)

# Este es un ejemplo de test ya que los nombres de los chefs son aleatorios, este test muy probablemente fallará
assert chef != nil
assert chef[:first_name] == 'Eduardo'
assert chef[:last_name] == 'Fernández' 
# p chef[:first_name] = 'Eduard'	si sirve
# assert chef[:first_name] == "Eduard"	si sirve

#chef.create {"Juan","Gomez","1994-11-27","10orangeblue@gmail.com","48393843"}


puts "finished"
# Nota: El programa lanzara el error de ejecucion 
# si alguna prueba se lleva mal


# metodos de chef
# self.all         				check
# self.create(attributes)  		no check
# self.where(query, *args)		no check
# self.find(pk)					check
# save							funciona junto con self.create
# new_record?					funciona junto con new record

# e.g., chef[:first_name] #=> 'Steve'
# [](attribute)					check

# e.g., chef[:first_name] = 'Steve'
# []=(attribute, value)			check

# meals
# add_meals(meals)

# insert!
# update!