class Chef
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def titleize
    "Chef #{@name} the Great Baker"
  end

  def bake(dessert)
    dessert.mix!
    put_in_oven(dessert)
    cut_and_serve(dessert)
  end

  private
  def put_in_oven(dessert)
    dessert.heat!
  end

  def cut_and_serve(dessert)
    dessert.quantity += 20
  end
end