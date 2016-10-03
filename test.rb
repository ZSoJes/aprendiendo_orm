# encoding: utf-8
require_relative 'app'

def assert(truthy)
  raise "Tests failed" unless truthy
end


chef = Chef.find(1)
meal = Meal.find(1)
# Este es un ejemplo de test ya que los nombres de los chefs son aleatorios, este test muy probablemente fallará
 Meal.all
 Chef.all
assert chef != nil
assert meal != nil
assert chef[:first_name] == 'Amy'
assert chef[:last_name] == 'Daugherty' 
assert Chef.where("first_name = ?", 'Dianna') != []
assert Meal.where("name = ?", "Ribs Tacos") != []


chef = Chef.create(first_name: "Juan",
  		 last_name: "Gomez",
  		 email:'10orangeblue@gmail.com',
  		 phone:'48393842',
  		 birthday:Time.now)

chef = Chef.create(
		first_name: "Jack",
  		 last_name: "Gomez",
  		  email:'10orangeblue@gmail.com',
  		  phone:'48393842',
  		  birthday:Time.now
  		  )
  		 


puts "finished"

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