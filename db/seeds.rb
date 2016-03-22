# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.find_or_create_by(email: 'test@example.com')
other_user = User.find_or_create_by(email: 'test2@example.com')

user.claims.create unless user.claims.any?
other_user.claims.create unless other_user.claims.any?

user.claims.first.commissioners << other_user
other_user.claims.first.commissioners << user
