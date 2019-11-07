require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
m1 = Manager.new("Anca", "HR", 40 )
m2 = Manager.new("Gordon", "Sales", 55 )

e1 = Employee.new("Chris", m1, 2000)
e2 = Employee.new("Giorge", m2, 3000)
e3 = Employee.new("Jimi", m1, 1000)
e4 = Employee.new("Tom", m2, 400)


#binding.pry
puts "done"
