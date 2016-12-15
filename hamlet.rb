class Horacio
end

h = Horacio.new


class Guard

  attr_reader :name

  def initialize(name)
    @status = :guarding
    @name   = name
  end

  def march 
    @status = :marching
  end

  def halt
    @status = :guarding
  end

  def current_status
    @status
  end
end

g1 = Guard.new("A guard has no name")
g2 = Guard.new("A guard also has no name")
g3 = Guard.new("A guard still has no name")

g1.name
g3.name

[g1, g2, g3].each do |g|
  g.march
end