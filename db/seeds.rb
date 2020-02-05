require_relative( "../models/artist.rb" )
require_relative( "../models/exhibit.rb" )
require("pry-byebug")

Exhibit.delete_all()
Artist.delete_all()

artist1 = Artist.new({
  'name' => 'Salvador Dali',
  'info' => 'Salvador Dali was a Spanish Surrealist artist.'
  })
artist1.save

artist2 = Artist.new({
  'name' => 'FCB Cadell',
  'info' => 'Francis Campbell Boileau Cadell was a Scottish Colourist painter.'
  })
artist2.save

artist3 = Artist.new({
  'name' => 'Giuseppe Baldan',
  'info' => 'Giuseppe Baldan was an Italian soldier in WW2 who spent his time as a POW painting.'
  })
artist3.save

artist4 = Artist.new({
  'name' => 'Claude Monet',
  'info' => 'Claude Monet was a French painter and founder of the Impressionist art movement'
  })
artist4.save

artist5 = Artist.new({
  'name' => 'Sir Henry Raeburn',
  'info' => 'Henry Raeburn was a Scottish portrait painter.'
  })
artist5.save

artist6 = Artist.new({
  'name' => 'Charles Rennie Mackintosh',
  'info' => 'Charles Mackintosh was a popular Scottish architect in the early 20th century.'
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
'info' => 'info',
'image_path' => '/Kelvingrove/Christ_of_Saint_John_of_the_Cross.jpg'
})
exhibit1.save

exhibit2 = Exhibit.new({
'name' => 'Interior - The Orange Blind',
'artist_id' => artist2.id,
'category' => 'Scottish Colourist',
'info' => 'info',
'image_path' => '/Kelvingrove/Interior-The_Orange_Blind.jpg'
})
exhibit2.save

exhibit3 = Exhibit.new({
'name' => 'La Faruk Madonna',
'artist_id' => artist3.id,
'category' => 'Religious Art',
'info' => 'info',
'image_path' => '/Kelvingrove/lafaruk.jpg'
})
exhibit3.save

exhibit4 = Exhibit.new({
'name' => 'Vétheuil',
'artist_id' => artist4.id,
'category' => 'Impressionism',
'info' => 'info',
'image_path' => '/Kelvingrove/vetheuil.jpg'
})
exhibit4.save

exhibit5 = Exhibit.new({
'name' => 'The MacNab',
'artist_id' => artist5.id,
'category' => 'Portrait painting',
'info' => 'info',
'image_path' => '/Kelvingrove/macnab.jpg'
})
exhibit5.save

exhibit6 = Exhibit.new({
'name' => 'The Wassail',
'artist_id' => artist6.id,
'category' => 'Expressionism',
'info' => 'info',
'image_path' => '/Kelvingrove/wassail.jpg'
})
exhibit6.save


binding.pry
nil
