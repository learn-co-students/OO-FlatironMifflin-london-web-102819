class Employee

    attr_accessor :name, :manager, :salary

    @@all = []

    def initialize (name, manager, salary)
        @name = name
        @manager = manager
        @salary = salary
        @@all << self 
    end
    
    def self.all
        @@all
    end

    def self.paid_over
        Employee.all.select {|employee| empoyee.salary > salary}
    end 

    def self.find_by_department(department_name)
        @@all.find{|employee| employee.department == deparment_name}
    end 

    def tax_bracket
        Employee.all.select do |employee|
            (self.salary - employee.salary).abs == 1000
    end 

end
