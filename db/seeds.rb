ActiveRecord::Base.connection.execute("DELETE FROM #{User.table_name}")

records = 4000

puts "\ncreating #{records} random records...\n\n"

records.times.each { User.create(:name =>  Faker::Name.name, :email => Faker::Internet.free_email, :phone => Faker::PhoneNumber.phone_number) }

puts "\n#{records} created\n\n"
