# create new class

class LunchMenu

	def initialize

		show_menu
	end

	def show_menu

		menu

	end

	def menu
		@cal_meal = []
		usr_input = ''

		if usr_input != 'exit'

			puts "What main dish would you like?"
			puts "1: Meatloaf(5.00)"
			puts "2: Mystery Meat(3.00)"
			puts "3: Slop(1.00)"
			puts "4: Cancel Order/Reset"

			puts "***** Type 'exit' to quit *****"
			usr_input = gets.strip

			case usr_input
					when '1'
						@meal_ordered = 5.00
						@cal_meal << @meal_ordered
						side_dishes
					when '2'
						@meal_ordered = 3.00
						@cal_meal << @meal_ordered
						side_dishes
					when '3'
						@meal_ordered = 1.00	
						@cal_meal << @meal_ordered				
						side_dishes
					when '4'
						puts "Are you sure you want to cancel? (y/n)"
						usr_sel = gets.strip
						if usr_sel == 'y'
							puts "Thank you! Come again Soon!"
							exit
						elsif usr_sel == 'n'
							@cal_meal = []
							menu
						end
								
					else
						if usr_input != 'quit'
							puts "We are not currently serving that meal"
							menu
						else
							exit
						end		
				end	
			end
	 end
	
	def side_dishes

		
		usr_input = ''

		if usr_input != 'exit'
				
			puts "What side dish would you like?"
			puts "1: Carrot(1.75)"
			puts "2: Mystery Yogurt(1.00)"
			puts "3: Beef Jerkey(.50)"
			puts "4: Cancel Order/Reset"
			puts "***** Type 'exit' to quit *****"


			usr_input = gets.strip
			@total = 0
			
			case usr_input

			when '1'
				@side_dish = 1.75
				@cal_meal << @side_dish

			when '2'
				@side_dish = 1.00
				@cal_meal << @side_dish

			when '3'
				@side_dish =  0.50
				@cal_meal << @side_dish

			when '4'
				puts "Are you sure you want to cancel? (y/n)"
				usr_sel = gets.strip
				if usr_sel == 'y'
					puts "Thank you! Come again Soon!"
					exit
				elsif usr_sel == 'n'
					@cal_meal = []
					menu
				end

			else
				if usr_input != 'quit'
					puts "Not a valid entry, try again later"
					side_dishes
				else 
					exit
				end		

			end

			puts @cal_meal
			@cal_meal.each {|x| @total += x }
			puts "total is : $#{@total}"
			money(@total)
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

			# side_dishes

		elsif choice == 'n'
			puts "Your total is $#{@total}. "
			puts "Thanks for eating with us! Come again Soon"
			exit
		else
			puts "invalide response, type 'y' for yes and n for 'no'"
			continued_order
		end
	 end

	 def money(amount)
	 	@money_on_hand = 6.50
	 	if @money_on_hand < amount
	 		sum = amount - @money_on_hand
	 		puts "you have insufficent funds"
	 		puts "your current balance is #{amount} you have #{@money_on_hand}"
	 		puts "the difference is #{sum}"
	 	end

	 end

		
end


my_menu = LunchMenu.new


