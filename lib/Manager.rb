class Manager

    attr_accessor : :name, :department, :age

    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@managers.array << self
    end     

    def self
        @@all
    end

    def manager_hire_employee
        Employee.all.each do |employee|
            if employee.name == employee_name && employee.salary == salary
                employee.manager = self 
                return employee
    end 

    def self.all_departments

    end 

    def self.average_age

    end

end


    