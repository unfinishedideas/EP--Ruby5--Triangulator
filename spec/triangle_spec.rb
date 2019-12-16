require 'rspec'
require 'triangle'

describe ('#Triangulator') do

# before(:each) do
#   Triangulator.clear()
# end
#
# describe('.clear')do
#   it("clears all previous measurements") do
#
#   end
# end

it("determines if input is an integer") do
  triangle = Triangulator.new("side_1",2, 3)
  expect(triangle.check_type()).to(eq(false))
end
it("determines if input does not make a triangle") do
  triangle = Triangulator.new(30,2, 3)
  expect(triangle.check_type()).to(eq('Not a triangle!'))
end
it("determines if input is a Scalene triangle") do
  triangle = Triangulator.new(4, 2, 3)
  expect(triangle.check_type()).to(eq('You have a Scalene triangle on your hands!'))
end
it("determines if input is a Scalene triangle") do
  triangle = Triangulator.new(2, 2, 2)
  expect(triangle.check_type()).to(eq("It's Equalateral!"))
end





































end
