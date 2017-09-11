require('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')
require('./lib/triangle')


get('/') do
  @description = "This application will determine what type of triangle you have"
  erb(:input)
end
get('/output') do
  # binding.pry
  @side_one = params.fetch("side_one")
  @side_two = params.fetch("side_two")
  @side_three = params.fetch("side_three")
  triangle = Triangle.new(@side_one, @side_two, @side_three)
  if triangle.equilateral?
    @string_to_display =  "equilateral"
  elsif triangle.isosceles?
    @string_to_display = "isosceles"
  elsif triangle.scalene?
    @string_to_display = "scalene"
  else
    @string_to_display = "not a triangle"
  end
  erb(:output)
end
