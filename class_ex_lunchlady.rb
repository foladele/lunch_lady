class Buyer

	attr_accessor :dishes, :wallet

	def initialize
		@dishes =[]
		@wallet = 7.00
	end
end

class Dish
	attr_reader :name, :price

	def initialize(name, price)
		@name = name
		@price = price
	end
end

class LunchLady
	attr_accessor :buyer
	
	def initialize
		@buyer = Buyer.new
	end

	def pick_main_dish
		puts "What main dish do you like?"
		# dishes
		puts "1: Meatloaf(5.00)"
		puts "2: Mystery Meat(3.00)"
		puts "3: Slop(1.00)"

		case gets.strip
		when '1'
			buyer.dishes << Dish.new("Meatloaf", 5.00)
		when '2'
			buyer.dishes << Dish.new("Mystery Meat", 3.00)
		when '3'
			buyer.dishes << Dish.new("Slop", 1.00)
		else
			puts "bad selection"
			pick_main_dish

		end
		
	end

# TODO refactor side dishes and main dish to methods
	def pick_side_dish
		puts "What main dish do you like?"
		puts "1: Carrot(1.75)"
		puts "2: Mystery Yogurt(1.00)"
		puts "3: Beef Jerkey(.50)"

		case gets.strip
		when '1'
			buyer.dishes << Dish.new("Carrot", 1.75)
		when '2'
			buyer.dishes << Dish.new("Mystery Yogurt", 1.00)
		when '3'
			buyer.dishes << Dish.new("Beef Jerkey", 0.50)
		else
			puts "bad selection"
			pick_side_dish

		end

	end

	def repeat_order
		new_arr = []
		puts "Your order consist of:"
		# buyer.dishes.each do |dish|
		# 	new_arr << dish.name
		# end
		# puts new_arr.join(",")

		#the same as above ^ comment
		puts buyer.dishes.map(&:name).join(',')
	end

	def total_order
		puts "your order total is: "
		 # sum = 0
		 # buyer.dishes.eadh do |dish|
		 # 	sun +=dish.price
		 # end

		 #Alternatively
		puts buyer.dishes.map(&:price).inject(:+)

	end

	def process_buyer
		pick_main_dish
		2.times {pick_side_dish}
		repeat_order
		total_order
	end

end

LunchLady.new.process_buyer














