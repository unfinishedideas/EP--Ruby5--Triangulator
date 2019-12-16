require('sinatra')
require('sinatra/reloader')
require('./lib/triangle')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  erb(:input)
end

get('/input') do
  erb(:input)
end

get('/triangle_display') do
  @result_text = @triangle.check_type()
  erb(:triangle_display)
end

post('/triangle_display') do
  @triangle = Triangulator.new(*params.values)
  # * = "Splat"(all values) + param values || (side_1, Side_2, etc....) 
  @result_text = @triangle.check_type()
  erb(:triangle_display)
end
