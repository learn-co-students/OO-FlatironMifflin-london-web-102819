class Manager

    attr_accessor :name, :department, :age 
    
    @@all = [] 

    def initialize(name, department, age)
        @name = name 
        @department = department
        @age = age 
        @@all << self
    end 

    def name 
        @name
    end

    def age 
        @age
    end 

    def employees
        Employee.all.select { |employee| employee.manager == self }
    end 

    def self.all 
        @@all 
    end 

    def hire_employee(name, salary)
        new_hire = Employee.new(name, salary, self)
    end

    def self.all_departments
        all.map { |manager| manager.department }
    end 

    def self.manager_ages   # returns array of Manager ages
        all.map { |manager| manager.age }
    end

    def self.average_age
        manager_count = all.count 
        total_age = manager_ages.reduce(:+)
        (total_age / manager_count).to_f 
    end 

end
