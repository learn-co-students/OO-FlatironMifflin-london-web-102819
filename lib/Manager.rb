class Manager

    attr_accessor :name, :age, :department
    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_age
        Manager.all.map{|m| m.age}.sum / @@all.count.to_f
    end

    def employees
        Employee.all.select{|employee| employee.department = self.department}
    end

    def self.all_departments
        @@all.map{|manager| manager.department}.uniq
    end

    def hire_employee(employee_name, salary)
        Employee.new(employee_name, salary, self)
    end

end
