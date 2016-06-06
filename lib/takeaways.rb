#Takeaway 

require_relative 'menu'
require_relative 'messenger'

class Takeaway

  include Menu

  #HOLDS A USERS ORDER

  def cart	
    @cart ||= Hash.new(0)
  end

  #ALLOWS USER TO VIEW MENU

  def view_menu
	PRICES #COULD ADD!.each_with_index {|(item, price), index| puts "#{index + 1} - #{item} : £#{price}"}
  end

  #ALLOWS USER TO ADD MENU ITEMS TO CART

  def order(number)
  	  cart[PRICES.keys[number-1]] += 1
  end

  #RETURNS TOTAL PRICE OF ORDER TO USER

  def price
  	price = 0
  	cart.each do |item, amount|
  		price += (PRICES[item] * amount)
  	end
  	price
  end

  #ALLOWS USER TO ATTEMPT TO PAY WHAT THEY FEEL IS THE CORRECT TOTAL

  def pay(estimate)
  	if estimate == price
      Messenger.new.send
    else 
      fail "ERROR: ESTIMATED PRICE DOES NOT MATCH ORDER TOTAL"
    end
  end

end
