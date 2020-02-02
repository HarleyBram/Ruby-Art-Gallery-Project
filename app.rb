require('sinatra')
require('sinatra/contrib/all')
require_relative('controllers/admin_controller')
require_relative('controllers/visitor_controller')
require_relative('./models/exhibit.rb')
require_relative('./models/artist.rb')
also_reload('./models/*')


get '/' do
  erb(:index)
end

# make a home page, put indicies into more specific folders as the split is after this home page. also make a seed
