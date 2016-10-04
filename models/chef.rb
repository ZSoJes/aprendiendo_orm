# Script Chefs
class Chef < MiniActiveRecord::Model
  @tabla = "chefs"
  def self.all
    @tabla
    super
  end

  def self.where(query, *args)
    @tabla
    super
  end

  self.attribute_names = [:id, :first_name, :last_name, :email, :phone,
                          :birthday, :created_at, :updated_at]

  def initialize(attributes = {})
     @clase = self.class
    super
  end

  def meals
    Meal.where('chef_id = ?', self[:id])
  end

  def add_meals(meals)
    meals.each do |meal|
      meal.chef = self
    end

    meals
  end


  private

  def insert!
    @tabla = "chefs"
    super
  end

  def update!
    @tabla = "chefs"
    super
  end
end