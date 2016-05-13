# create new class

class LunchMenu
	def initialize
		menu
	end

	def menu
		
		puts "What main dish would you like?"
		puts "1. Meatloaf(5.00)"
		puts "2. Mystery Meat(3.00)"
		puts "3. Slop(1.00)"

	end
end

my_menu = LunchMenu.new
