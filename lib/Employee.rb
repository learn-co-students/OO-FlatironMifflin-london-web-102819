class Employee

    attr_reader :name
    attr_accessor :salary, :manager

    @@all = []

    def initialize(name, salary, manager)
        @name = name 
        @salary = salary 
        @manager = manager
        @@all << self
    end 

    def name 
        @name 
    end

    def salary 
        @salary 
    end 

    def manager_name 
        @manager.name
    end 

    def self.all 
        @@all 
    end 

    def self.paid_over(base)
        all.select { |employee| employee.salary > base }
    end 

    def self.find_by_department(dept)
        manager = Manager.all.find { |manager| manager.department == dept}
        manager.employees.find { |e| e }
    end 

    def tax_bracket 
        salary_high = @salary + 1000
        salary_low = @salary - 1000
        Employee.all.select { |employee| employee.salary <= salary_high && employee.salary >= salary_low }
    end

end
