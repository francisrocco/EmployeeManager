require_relative "Employee.rb"

class Manager < Employee

  attr_accessor :employees

  def initialize(name, title, salary, boss = nil)

    super(name, title, salary, boss)
    @employees = []
  end

  def bonus(multiplier)
    total = 0
    @employees.each do |employee|
      if employee.class == Manager
        employee.employees.each do |employee2|
          total += employee2.salary
        end
        total += employee.salary
      else
        total += employee.salary
      end
    end
    total * multiplier
  end


  def add_employee(employee)

    self.employees << employee
    employee.boss = self
  end

end
