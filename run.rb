require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
adam = Manager.new("Adam", "PS", 39)
ev = Manager.new("Ev", "PS Global", 40)

andrew = adam.hire_employee("Andrew", 40000)
adnaan = ev.hire_employee("Adnaan", 40000)
lee = adam.hire_employee("Lee", 30000)
jamie = ev.hire_employee("Jamie", 15000)

binding.pry
puts "done"
