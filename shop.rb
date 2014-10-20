require_relative './shoppingCart'

class Shop
	attr_accessor :totalPrice, :totalProducts, :productsShop
	attr_accessor :fruit, :houseWare, :products

	def initialize ()
		@productsShop = [["Vacuum cleaner"], ["banana"], "Orange Juice", "Rice", "Anchovies"]
		@fruit = []
		@houseWare = []
		@products = []
		@totalPrice = 0
		@totalProducts = ""
	end

	def checkProduct (product)
		b= false

		for i in 0..@productsShop.length-1
			if @productsShop[i].class.to_s==="Array"
				for x in 0..@productsShop[i].length-1
					if @productsShop[i][x].downcase == product
						x==1 ? @fruit << Fruit.new(product,10) : @houseWare << HouseWare.new(product,150)
						b=true
						break
					end
				end
			elsif @productsShop[i].downcase==product.downcase
				puts product.downcase
				case product.downcase
					when "orange juice"
					  @products << Product.new(product,10)
					  pushProduct(@products.last)
					  b=true
					  break
					when "rice"
					  @products << Product.new(product,1)
					  pushProduct(@products.last)
					  b=true
					  break
					when "anchovies"
					  @products << Product.new(product,2)
					  pushProduct(@products.last)
					  b=true
					  break
				end
			end
		end

		if b==false
			puts "Ese producto no existe en nuestra tienda"
		end
	end

	def pushProduct (product)
		price, name = product.getProduct
		@totalPrice += price
		@totalProducts += name + " \n"
	end

	def getList
		puts @totalProducts
		puts @totalPrice
	end
end

shop = Shop.new

shop.checkProduct(gets.chomp)