#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(first_name: 'Album', last_name: 'Administrator', email: 'admin',
  password: 'pass',:password_confirmation => 'pass', admin: true)

user = User.create(first_name: 'Andy', last_name: 'Guinther', email: 'andy@email.com',
  password: 'pass',:password_confirmation => 'pass', admin: false)

User.create(first_name: 'Jason', last_name: 'Noble', email: 'jason@email.com',
  password: 'pass',:password_confirmation => 'pass', admin: false)

# user.sales.create(title: 'Moving Pictures', artist: 'Rush', release_year: 1981, price: 5.99, medium: 'Album', condition: 'Mint')
AlbumListing.create(title: 'Moving Pictures', artist: 'Rush', release_year: 1981,
  price: 5.99, medium: 'Album', condition: 'Mint', seller: user, seller_id: user.id)

AlbumListing.create(title: 'Hemispheres', artist: 'Rush', release_year: 1978,
  price: 11.99, medium: 'Album', condition: 'Good', seller: user, seller_id: user.id)
