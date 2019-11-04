class Manager

    attr_reader :name, :department, :age
    attr_accessor :employees

    @@all = []
    
    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @employees = []
        @@all << self
    end

    def self.all
        @@all
    end

    def hire_employee(employee)
        employee.manager_name.employees.delete(employee)
        self.employees << employee
        employee.manager_name = self
    end

    def self.all_departments
        self.all.map { |manager| manager.department }
    end

    def self.average_age
        age_array = self.all.map { |manager| manager.age }
        age_array.sum / age_array.length
    end



end
