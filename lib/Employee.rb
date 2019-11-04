class Employee

    attr_reader :name
    attr_accessor :salary, :manager_name

    @@all = []

    def initialize(name, salary, manager_name)
        if Manager.all.include?(manager_name) 
            @name = name
            @salary = salary
            @manager_name = manager_name
            manager_name.employees << self
            @@all << self
        else puts "Manager not found."
        end
    end

    def self.all
        @@all
    end

    def self.paid_over(amount)
        self.all.select { |employee| employee.salary > amount }
    end

    def self.find_by_department(department)
        manager_of_department = Manager.all.select { |manager| manager.department == department }
        manager_of_department[0].employees
    end

    def tax_bracket
        a1 = Employee.all.select { |employee| employee.salary <= self.salary + 1000 }
        a2 = a1.select { |employee| employee.salary >= self.salary - 1000 }
        a3 = a2.reject {|employee| employee == self }
    end


end
