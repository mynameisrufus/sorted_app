# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
#
4000.times.each { User.create(:name =>  Faker::Name.name, :email => Faker::Internet.free_email, :phone => Faker::PhoneNumber.phone_number) }
