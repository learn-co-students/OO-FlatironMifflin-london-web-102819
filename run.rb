require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
m1 = Manager.new("Michael Scott", "Regional Manager", 42 )
m2 = Manager.new("David Wallace", "Group Manager", 48 )


e1 = Employee.new("Jim", m1, 2000)
e2 = Employee.new("Pam", m2, 3000)
e3 = Employee.new("Dwight", m1, 1000)
e4 = Employee.new("Andy", m2, 400)


binding.pry
puts "done"
