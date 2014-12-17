#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(first_name: 'Album', last_name: 'Administrator', email: 'admin@admin.com',
  password: 'password',:password_confirmation => 'password', admin: true)
