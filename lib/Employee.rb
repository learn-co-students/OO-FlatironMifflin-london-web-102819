require "pry"

class Employee
  attr_reader :name, :manager, :salary

  @@all = []
  def initialize(name, manager, salary)
    @name
    @manager = manager
    @salary = salary
    @@all << self
  end

  def self.all
    @@all
  end

  def self.paid_over(amount)
     self.all.select {|e| e.salary > amount}
  end

  #takes a String argument that is the name of a department and 
  #returns the first employee whose manager is working in that department
  def self.find_by_department(department_name)
    self.all.find {|e| e.manager.department == department_name}
  end


  #returns an Array of all the employees whose 
  #salaries are within $1000 (± 1000) of the employee who invoked the method
  def tax_bracket
    self.all.select do |e| 
      (self.salary - e.salary).abs == 1000
    end
  end
  
end
