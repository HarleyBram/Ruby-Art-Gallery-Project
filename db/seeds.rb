require_relative( "../models/artist.rb" )
require_relative( "../models/exhibit.rb" )
require("pry-byebug")

Exhibit.delete_all()
Artist.delete_all()

artist1 = Artist.new({
  'name' => 'Salvador Dali',
  'info' => 'info'
  })
artist1.save

artist2 = Artist.new({
  'name' => 'FCB Cadell',
  'info' => 'info'
  })
artist2.save

artist3 = Artist.new({
  'name' => 'Giuseppe Baldan',
  'info' => 'info'
  })
artist3.save

artist4 = Artist.new({
  'name' => 'Claude Monet',
  'info' => 'info'
  })
artist4.save

artist5 = Artist.new({
  'name' => 'Sir Henry Raeburn',
  'info' => 'info'
  })
artist5.save

artist6 = Artist.new({
  'name' => 'Charles Rennie Mackintosh',
  'info' => 'info'
  })
artist6.save

artist7 = Artist.new({
  'name' => 'Anon',
  'info' => "We don't know who the artist is"
  })
artist7.save

exhibit1 = Exhibit.new({
'name' => 'Christ of Saint John of the Cross',
'artist_id' => artist1.id,
'category' => 'Surrealist',
'info' => 'info'
})
exhibit1.save

exhibit2 = Exhibit.new({
'name' => 'Interior - The Orange Blind',
'artist_id' => artist2.id,
'category' => 'Scottish Colourist',
'info' => 'info'
})
exhibit2.save

exhibit3 = Exhibit.new({
'name' => 'La Faruk Madonna',
'artist_id' => artist3.id,
'category' => 'Religious Art',
'info' => 'info'
})
exhibit3.save

exhibit4 = Exhibit.new({
'name' => 'Vétheuil',
'artist_id' => artist4.id,
'category' => 'Impressionism',
'info' => 'info'
})
exhibit4.save

exhibit5 = Exhibit.new({
'name' => 'The McNab',
'artist_id' => artist5.id,
'category' => 'Portrait painting',
'info' => 'info'
})
exhibit5.save

exhibit6 = Exhibit.new({
'name' => 'The Wassail',
'artist_id' => artist6.id,
'category' => 'Expressionism',
'info' => 'info'
})
exhibit6.save


binding.pry
nil
