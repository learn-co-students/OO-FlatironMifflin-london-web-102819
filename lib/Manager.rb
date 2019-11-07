class Manager
  attr_reader :name, :department
  attr_accessor :age

  @@all = []
  def initialize(name, department, age)
    @name
    @department = department
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end

  def hire_employee(employee_name, salary)
    self.new(employee_name, self, salary)
  end

  def self.all_departments
    self.all.map {|m| m.department} 
  end

  def self.all_ages
    self.all.map {|m| m.age}
  end

  def self.average_age
    all_ages.sum / all_ages.size.to_f
  end
end
