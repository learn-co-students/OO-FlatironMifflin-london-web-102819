require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'

anna = Manager.new('Anna', 'advertising', 35)
lucy = Manager.new('Lucy', 'accounting', 47)

mike = Employee.new('Mike', 5000, anna)
jeff = Employee.new('Jeff', 3000, anna)
phil = Employee.new('Phil', 6000, lucy)

binding.pry
puts "done"
