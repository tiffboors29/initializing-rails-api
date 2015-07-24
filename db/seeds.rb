# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

%w(and dna dan).each do |name|  # use strings to create users
  email = "#{name}@#{name}.com"
  next if User.exists? email: email # next means skip to next iteration
  User.create!(email: email, password: 'abc123', password_confirmation: 'abc123')
end
