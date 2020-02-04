require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/exhibit.rb')
also_reload('../models/*')
require('pry')

get '/visitor' do
  @exhibits = Exhibit.all
  # binding.pry
  erb(:'visitor/index')
end

get '/visitor/category/:category' do
  @exhibit = Exhibit.find_by_category(params['category'])
  erb(:'visitor/category')
end


get '/visitor/:id' do
  @exhibit = Exhibit.find(params['id'].to_i)
  erb(:'visitor/show')
end

get '/visitor/artist/:id' do
  @artist = Artist.find(params['id'].to_i)
  erb(:'visitor/artist')
end
# computer can't differentiate between exhibit id and artist id
