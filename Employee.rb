class Employee

  attr_accessor :title, :salary, :boss, :name

  def initialize(name, title, salary, boss = nil)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
    add_boss(boss)
  end

  def bonus(multiplier)
    @salary * multiplier
  end

  def add_boss(boss)
    boss.add_employee(self) unless boss.nil?
  end

end


# ned = Manager.new("ned", "founder", 1000000)
# darren = Manager.new("darren", "ta manager", 78,000, ned)
# shawna = Employee.new("shawna", "ta", 12000, darren)
# david = Employee.new("david", "ta", 10000, darren)
