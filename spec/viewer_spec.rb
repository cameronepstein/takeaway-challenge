#Viewer unit tests 

#require_relative '../lib/viewer'

describe Viewer do 

	it 'returns a menu when sent one' do 
		viewer = Viewer.new
		expect(viewer.view(Diner)).to respond_to (:empty?)
	end
end