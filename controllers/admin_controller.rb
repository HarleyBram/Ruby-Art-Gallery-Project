require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/exhibit.rb')
also_reload('../models/*')

get '/admin' do
  @exhibits = Exhibit.all
  erb(:'admin/index')
end
