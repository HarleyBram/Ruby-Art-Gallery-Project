require('sinatra')
require('sinatra/contrib/all')



get '/' do
  erb(:index)
end

# make a home page, put indicies into more specific folders as the split is after this home page. also make a seed
