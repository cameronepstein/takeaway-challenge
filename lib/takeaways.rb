#Takeaway 

require_relative 'menu'

class Takeaway

  include Menu

  def cart	
    @cart ||= Hash.new(0)
  end

  def view_menu
	PRICES #COULD ADD!.each_with_index {|(item, price), index| puts "#{index + 1} - #{item} : £#{price}"}
  end

  def order(number)
  	  cart[PRICES.keys[number-1]] += 1
  end

  def price
  	price = 0
  	cart.each do |item, amount|
  		price += (PRICES[item] * amount)
  	end
  	price
  end

  def check_price(estimate)
  	if estimate == price
      "Correct Estimate"
    else 
      fail "ERROR: ESTIMATED PRICE DOES NOT MATCH ORDER TOTAL"
    end
  end

  # def order_checker
  # 	until PRICES.keys.include? @item
  # 	  puts "Item not included in menu, please try again"
  # 	  @cart = gets.chomp
  # 	end
  # end
end
