require 'active_record'
require_relative './models/genre.rb'
require_relative './models/movie.rb'
require_relative './models/purchase.rb'
require_relative './models/user.rb'

ActiveRecord::Base.establish_connection(
  adapter:  'postgresql',
  host:     'localhost',
  username: 'kristenmacfarlane',
  database: 'popcorn_db'
)

# Logging
ActiveRecord::Base.logger = ActiveSupport::Logger.new($stdout)
