desc 'Generating seed data for the database'
task :seed_data, [:number] => :environment do |_, args|
  data_amount = (args[:number])
  # puts data_amount
  data_amount.to_i.times do
    address = Address.create(city: Faker::Address.city, street: Faker::Address.street_name)
    user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, address_id: address.id)
    post = Post.create(body: Faker::Lorem.sentence, user_id: user.id)
  end
  puts 'The seed data has successfully been created!'
end

