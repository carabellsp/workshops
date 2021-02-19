desc 'Generating seed data for the database'
task :seed_data, [:number] => :environment do |_, args|
  data_amount = (args[:number])
  # puts data_amount
  data_amount.to_i.times do
    user = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
    user.build_address(city: Faker::Address.city, street: Faker::Address.street_name)
    user.posts.build(body: Faker::Lorem.sentence)
    user.save!
  end
  puts 'The seed data has successfully been created!'
end

