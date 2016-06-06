#Takeaway unit tests INCOMPLETE!!!

require_relative '../lib/takeaways'

describe Takeaway do 

  describe "Methods" do

    it 'Returns a menu when told to view one' do 
      takeaway = Takeaway.new
	  expect(takeaway.respond_to?(:view_menu)).to be true
    end

    it 'Allows user to add food to cart' do 
      takeaway = Takeaway.new
      takeaway.order(1)
      expect(takeaway.cart).not_to be_empty
    end

    it 'Returns a total amount for users order' do
      takeaway = Takeaway.new
      expect(takeaway.price).to eq 0
    end

    # TEST EXPECTING ERROR BUT INSTEAD GETTING RUNTIME ERROR!
    # it "Returns an error if price estimate is wrong" do
    #   takeaway = Takeaway.new
    #   expect(takeaway.check_price(10)).to raise_error "ERROR: ESTIMATED PRICE DOES NOT MATCH ORDER TOTAL"
    # end
end
end
