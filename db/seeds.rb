# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

alice = User.new({ email: 'alice@example.com' })
alice.password = alice.password_confirmation = 's0meP4sswOrd'
# set an authentication token - only for demonstration purpose!
alice.authentication_token = 'Ex4mPle_T0keN'
alice.save
