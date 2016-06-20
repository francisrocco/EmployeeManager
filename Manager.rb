require_relative "/Employee.rb"

class Manager < Employee

  attr_accessor :employees

  def initialize(name, title, salary, boss = nil)
    super
    @employees = []
  end

  def bonus(multiplier)
    total = 0
    @employees.each do |employee|
      total += employee.salary
    end
    total * multiplier
  end
end
