class Meal < MiniActiveRecord::Model
  @tabla = "meals"
  def self.all
    @tabla
    super
  end

  def self.where(query, *args)
    @tabla
    super
  end

  self.attribute_names = [:id, :name, :chef_id, :created_at, :updated_at]

  def initialize(attributes = {})
    @clase = self.class
    super
  end

  def chef
    Chef.where('id = ?', self[:chef_id])
  end

  def chef=(chef)
    self[:chef_id] = chef[:id]
    self.save

    chef
  end

  private

  def insert!
    @tabla = "meals"
    super
  end

  def update!
    @tabla = "meals"
    super
  end
end