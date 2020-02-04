require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('../models/exhibit.rb')
also_reload('../models/*')

# gets a list of exhibits
get '/admin' do
  @exhibits = Exhibit.all
  erb(:'admin/index')
end

# gets a list of artists
get '/admin/artists' do
  @artists = Artist.all
  erb(:'admin/artists')
end

# adds an exhibit
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

# gets the add artist page
get '/admin/add_artist' do
  erb(:'admin/add_artist')
end

# posts the add artist page results to db
post '/admin/add_artist' do
  artist = Artist.new(params)
  artist.save
  redirect to '/admin/artists'
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

# delete exhibit
post '/admin/delete/:id' do
  p "heyyyyy"
  Exhibit.delete(params['id'])
  redirect to '/admin'
end

# delete artist
post '/admin/artists/delete/:id' do
  Artist.delete(params['id'])
  redirect to '/admin/artists'
end
