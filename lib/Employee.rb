class Employee

    attr_accessor :name, :salary, :manager
    @@all = []

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end

    def self.all
        @@all
    end

    def self.paid_over
        @@all.select{|employee| employee.salary > 1000}
    end

    def tax_bracket
        @all.select{|employee| employee.salary < self.salary + 1000 && employee.salary > self.salary - 1000}
    end

    def manager_name
        @manager.name
    end

    def self.find_by_department(department_name)
        @@all.find{|employee| employee.manager.department == department_name}
    end

end