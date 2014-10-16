class InventoryOutofStockError < StandardError
	def initialize
		puts "InventoryOutofStockError.new"
	end
end

class Inventory
		# class variable
		@@current_stock=10

		def process(quantity)
			puts "[ ordered quantity -> #{quantity} ]"

			begin
				if (quantity > @@current_stock) then
					raise InventoryOutofStockError
				end	

				puts "[ your order shall be shipped soon ]"
				@@current_stock = @@current_stock - quantity

			rescue InventoryOutofStockError 
				puts "!! Sorry, we ran out of stock !!"

			ensure
				puts "[ This gets executed atlast and everytime ]"
			end
		end
end

class OrderProcessor

	def initialize()
			@inventory = Inventory.new
	end

	def place_an_order(quantity)
		@inventory.process(quantity)
	end
end

class ShoppingCart
		
		def initialize()
			@orderProcessor = OrderProcessor.new
		end
		
		def submit(quantity)
			@orderProcessor.place_an_order(quantity)
		end
end


myCart = ShoppingCart.new
myCart.submit(1)
myCart.submit(2)

# this should raise an InventoryOutofStockError
myCart.submit(10) 