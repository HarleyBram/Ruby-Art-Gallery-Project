require_relative( "../models/artist.rb" )
require_relative( "../models/exhibit.rb" )
require("pry-byebug")

Exhibit.delete_all()
Artist.delete_all()

exhibit1 = Exhibit.new({
'name' => 'Christ of Saint John of the Cross',
'artist_id' => '1',
'category' => 'surrealist'
'info' => 'info'
})
