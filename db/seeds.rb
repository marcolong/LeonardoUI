# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all if User.count == 1
user=User.new :email => 'admin@LeonardoUI.com', :password => 'abcd1234', :password_confirmation => 'abcd1234'
user.roles=['admin']
user.save
user=User.new :email => 'manager@LeonardoUI.com', :password => 'abcd1234', :password_confirmation => 'abcd1234'
user.roles=['manager']
user.save
user=User.new :email => 'user@LeonardoUI.com', :password => 'abcd1234', :password_confirmation => 'abcd1234'
user.roles=['user']
user.save
