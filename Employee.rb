class Employee

  attr_reader :name
  attr_accessor :title, :salary, :boss

  def initialize(name, title, salary, boss = nil)
    @name = name,
    @title = title,
    @salary = 0,
    @boss = boss 
  end

  def bonus(multiplier)
    @salary * multiplier
  end

end
