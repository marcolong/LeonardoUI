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

### Created by leosca controller generator ### 
MyApplication.create([
{  :name => "Name1",  :path => "Path1",  :git => true,  :development => true,  :test => true,  :authentication => true,  :authorization => true,  :states => true,  :state => 1,  :bundle => true,  :bundle_path => "Bundle Path1" },
{  :name => "Name2",  :path => "Path2",  :git => true,  :development => true,  :test => true,  :authentication => true,  :authorization => true,  :states => true,  :state => 2,  :bundle => true,  :bundle_path => "Bundle Path2" },
{  :name => "Name3",  :path => "Path3",  :git => true,  :development => true,  :test => true,  :authentication => true,  :authorization => true,  :states => true,  :state => 3,  :bundle => true,  :bundle_path => "Bundle Path3" },
{  :name => "Name4",  :path => "Path4",  :git => true,  :development => true,  :test => true,  :authentication => true,  :authorization => true,  :states => true,  :state => 4,  :bundle => true,  :bundle_path => "Bundle Path4" },
{  :name => "Name5",  :path => "Path5",  :git => true,  :development => true,  :test => true,  :authentication => true,  :authorization => true,  :states => true,  :state => 5,  :bundle => true,  :bundle_path => "Bundle Path5" },
{  :name => "Name6",  :path => "Path6",  :git => true,  :development => true,  :test => true,  :authentication => true,  :authorization => true,  :states => true,  :state => 6,  :bundle => true,  :bundle_path => "Bundle Path6" },
{  :name => "Name7",  :path => "Path7",  :git => true,  :development => true,  :test => true,  :authentication => true,  :authorization => true,  :states => true,  :state => 7,  :bundle => true,  :bundle_path => "Bundle Path7" },
{  :name => "Name8",  :path => "Path8",  :git => true,  :development => true,  :test => true,  :authentication => true,  :authorization => true,  :states => true,  :state => 8,  :bundle => true,  :bundle_path => "Bundle Path8" },
{  :name => "Name9",  :path => "Path9",  :git => true,  :development => true,  :test => true,  :authentication => true,  :authorization => true,  :states => true,  :state => 9,  :bundle => true,  :bundle_path => "Bundle Path9" },
{  :name => "Name10",  :path => "Path10",  :git => true,  :development => true,  :test => true,  :authentication => true,  :authorization => true,  :states => true,  :state => 10,  :bundle => true,  :bundle_path => "Bundle Path10" },
{  :name => "Name11",  :path => "Path11",  :git => true,  :development => true,  :test => true,  :authentication => true,  :authorization => true,  :states => true,  :state => 11,  :bundle => true,  :bundle_path => "Bundle Path11" },
{  :name => "Name12",  :path => "Path12",  :git => true,  :development => true,  :test => true,  :authentication => true,  :authorization => true,  :states => true,  :state => 12,  :bundle => true,  :bundle_path => "Bundle Path12" },
{  :name => "Name13",  :path => "Path13",  :git => true,  :development => true,  :test => true,  :authentication => true,  :authorization => true,  :states => true,  :state => 13,  :bundle => true,  :bundle_path => "Bundle Path13" },
{  :name => "Name14",  :path => "Path14",  :git => true,  :development => true,  :test => true,  :authentication => true,  :authorization => true,  :states => true,  :state => 14,  :bundle => true,  :bundle_path => "Bundle Path14" },
{  :name => "Name15",  :path => "Path15",  :git => true,  :development => true,  :test => true,  :authentication => true,  :authorization => true,  :states => true,  :state => 15,  :bundle => true,  :bundle_path => "Bundle Path15" },
{  :name => "Name16",  :path => "Path16",  :git => true,  :development => true,  :test => true,  :authentication => true,  :authorization => true,  :states => true,  :state => 16,  :bundle => true,  :bundle_path => "Bundle Path16" },
{  :name => "Name17",  :path => "Path17",  :git => true,  :development => true,  :test => true,  :authentication => true,  :authorization => true,  :states => true,  :state => 17,  :bundle => true,  :bundle_path => "Bundle Path17" },
{  :name => "Name18",  :path => "Path18",  :git => true,  :development => true,  :test => true,  :authentication => true,  :authorization => true,  :states => true,  :state => 18,  :bundle => true,  :bundle_path => "Bundle Path18" },
{  :name => "Name19",  :path => "Path19",  :git => true,  :development => true,  :test => true,  :authentication => true,  :authorization => true,  :states => true,  :state => 19,  :bundle => true,  :bundle_path => "Bundle Path19" },
{  :name => "Name20",  :path => "Path20",  :git => true,  :development => true,  :test => true,  :authentication => true,  :authorization => true,  :states => true,  :state => 20,  :bundle => true,  :bundle_path => "Bundle Path20" },
{  :name => "Name21",  :path => "Path21",  :git => true,  :development => true,  :test => true,  :authentication => true,  :authorization => true,  :states => true,  :state => 21,  :bundle => true,  :bundle_path => "Bundle Path21" },
{  :name => "Name22",  :path => "Path22",  :git => true,  :development => true,  :test => true,  :authentication => true,  :authorization => true,  :states => true,  :state => 22,  :bundle => true,  :bundle_path => "Bundle Path22" },
{  :name => "Name23",  :path => "Path23",  :git => true,  :development => true,  :test => true,  :authentication => true,  :authorization => true,  :states => true,  :state => 23,  :bundle => true,  :bundle_path => "Bundle Path23" },
{  :name => "Name24",  :path => "Path24",  :git => true,  :development => true,  :test => true,  :authentication => true,  :authorization => true,  :states => true,  :state => 24,  :bundle => true,  :bundle_path => "Bundle Path24" },
{  :name => "Name25",  :path => "Path25",  :git => true,  :development => true,  :test => true,  :authentication => true,  :authorization => true,  :states => true,  :state => 25,  :bundle => true,  :bundle_path => "Bundle Path25" },
{  :name => "Name26",  :path => "Path26",  :git => true,  :development => true,  :test => true,  :authentication => true,  :authorization => true,  :states => true,  :state => 26,  :bundle => true,  :bundle_path => "Bundle Path26" },
{  :name => "Name27",  :path => "Path27",  :git => true,  :development => true,  :test => true,  :authentication => true,  :authorization => true,  :states => true,  :state => 27,  :bundle => true,  :bundle_path => "Bundle Path27" },
{  :name => "Name28",  :path => "Path28",  :git => true,  :development => true,  :test => true,  :authentication => true,  :authorization => true,  :states => true,  :state => 28,  :bundle => true,  :bundle_path => "Bundle Path28" },
{  :name => "Name29",  :path => "Path29",  :git => true,  :development => true,  :test => true,  :authentication => true,  :authorization => true,  :states => true,  :state => 29,  :bundle => true,  :bundle_path => "Bundle Path29" },
{  :name => "Name30",  :path => "Path30",  :git => true,  :development => true,  :test => true,  :authentication => true,  :authorization => true,  :states => true,  :state => 30,  :bundle => true,  :bundle_path => "Bundle Path30" },
])
