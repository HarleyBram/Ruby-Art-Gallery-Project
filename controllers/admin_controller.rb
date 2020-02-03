require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('../models/exhibit.rb')
also_reload('../models/*')

get '/admin' do
  @exhibits = Exhibit.all
  erb(:'admin/index')
end

get '/admin/artists' do
  @artists = Artist.all
  erb(:'admin/artists')
end

get '/admin/add'do
@artists = Artist.all
erb(:'admin/add')
end

# create a new exhibit
post '/admin/add' do
exhibit = Exhibit.new(params)
exhibit.save
redirect to '/admin'
end

get 'admin/add_artist' do
  erb(:'/admin/add_artist')
end

# gets the edit exhibit form
get '/admin/edit/:id' do
  @exhibit = Exhibit.find(params['id'])
  @artists = Artist.all
  erb(:'admin/edit')
end

# save the changes from an edit exhibit form to DB
post '/admin/edit/:id' do
  # create new exhibit object
  exhibit = Exhibit.new(params)
  # save changes to DB
  exhibit.update
  redirect to '/admin'

end
