require_relative './config.rb'
require 'ffaker'
require 'pg'
# This file should contain all the record creation needed to seed the
# database with its default values.
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  User.create(
    :name    => Faker::Name.name
    :email   => Faker::Internet.email
    :born_on => Faker::Time.date(:year_range => 60, :year_latest => 11)
  )
end
