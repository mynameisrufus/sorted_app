ActiveRecord::Base.connection.execute("DELETE FROM #{User.table_name}")

records = 4000

puts "\ncreating #{records} random records...\n\n"

records.times.each do
  user = User.create(:name =>  Faker::Name.name, :email => Faker::Internet.free_email, :phone => Faker::PhoneNumber.phone_number)
  2.times do
    user.items.create(:name => Faker::Company.bs, :value => rand(1000)/2)
  end
end

puts "\n#{records} created\n\n"
