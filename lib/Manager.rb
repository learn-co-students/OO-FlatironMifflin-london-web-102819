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
        Manager.all.map {|manager| manager.age}
    end 

    def self.average_age
        all_ages.sum / all_ages.size.to_f
      end

end


    