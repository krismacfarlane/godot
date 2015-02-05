require 'active_record'
require_relative 'artist.rb'
require_relative 'painting.rb'
require 'pry'

ActiveRecord::Base.establish_connection(
  adapter:  'postgresql',
  host:     'localhost',
  username: 'kristenmacfarlane',  # your username
  database: 'moma_db' # whatever postgres db you want to connect to
)

ActiveRecord::Base.logger = ActiveSupport::Logger.new($stdout)

v = Artist.create(name: "Vincent Van Gogh", nationality: "Dutch")
p = Artist.create(name: "Pablo Picasso", nationality: "Spanish")
k = Artist.create(name: "Katsushika Hokusai", nationality: "Japanese")
m = Artist.create(name: "Claude Monet", nationality: "French")

k.paintings.create(title: "The Great Wave off Kanagawa", artist_id: k.id)
v.paintings.create(title: "Starry Night", artist_id: v.id)
v.paintings.create(title: "Cafe Terrace at Night", artist_id: v.id)
p.paintings.create(title: "Guernica", artist_id: p.id)
p.paintings.create(title: "The Old Guitarist", artist_id: p.id)
k.paintings.create(title: "Red Fuji", artist_id: k.id)

binding.pry
