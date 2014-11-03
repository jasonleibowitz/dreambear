# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(first_name: 'Lee', last_name: 'Levin', email: 'lee@dreambear.org', password: 'jasonisawesome', password_confirmation: 'jasonisawesome')
User.create(first_name: 'Evan', last_name: 'Brown', email: 'evan@dreambear.org', password: 'jasonisawesome', password_confirmation: 'jasonisawesome')
