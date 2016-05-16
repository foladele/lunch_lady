# create new class

class LunchMenu

	def initialize

		menu
		side_dishes
		continued_order
	end

	def menu
		@cal_meal = []
		puts "What main dish would you like?"
		puts "1: Meatloaf(5.00)"
		puts "2: Mystery Meat(3.00)"
		puts "3: Slop(1.00)"
		puts "4: Cancel Order"

		puts "***** Type 'exit' to quit *****"

		usr_input = gets.strip

		if usr_input != 'exit'
			while true

				case usr_input

				when '1'
					meal_ordered = 5.00
					@cal_meal << meal_ordered
					break
				when '2'
					meal_ordered = 3.00
					@cal_meal << meal_ordered
					break
				when '3'
					meal_ordered = 1.00
					@cal_meal << meal_ordered
					break

				when '4'
					puts "Are you sure you want to cancel? (y/n)"
					usr_sel = gets.strip
					if usr_sel == 'y'
						puts "Come again Soon!"
						exit
					elsif usr_sel == 'n'
						@cal_meal = []
						menu
					end
							
				else
					puts "We are not currently serving that meal"
					menu
				end
			end
		
		else
			puts "Thanks for eating with us! Come again Soon"
		end
	end

	def side_dishes

		
		puts "What side dish would you like?"
		puts "1: Carrot(1.75)"
		puts "2: Mystery Yogurt(1.00)"
		puts "3: Beef Jerkey(.50)"
		usr_input = gets.strip
		@total = 0
		
		case usr_input
		when '1'
			side_dish = 1.75
			@cal_meal << side_dish
		when '2'
			side_dish = 1.00
			@cal_meal << side_dish
		when '3'
			side_dish =  0.05
			@cal_meal << side_dish
	
		else
			puts "Not a valid entry, try again later"
		end

		puts @cal_meal
		@cal_meal.each {|x| @total += x }

		continued_order
		
		

	end
end

def continued_order

	puts "Would you like to add more main or side dish? (y/n)"

	choice = gets.strip.downcase

	if choice == 'y'
		puts "(Main dish/side dish) M for main dishe, S for side dish"
		usr_sel = gets.strip.upcase
		if usr_sel == 'M'
			menu
		elsif usr_sel = 'S'
			side_dishes
		else
			"Invalid selection, try again"
			 continued_order
		end

	elsif choice == 'n'
		puts "Your total is $#{@total}. "
		puts "Thanks for eating with us! Come again Soon"
		exit
	else
		puts "invalide response, type 'y' for yes and n for 'no'"
		continued_order
	end
end

my_menu = LunchMenu.new


