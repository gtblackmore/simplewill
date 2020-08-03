10.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state,
    zip: Faker::Address.zip,
    email: Faker::Internet.email,
    birthdate: Faker::Date.birthday(min_age: 18, max_age: 65)
  )
end

30.times do
  Child.create(
    first_name: Faker::Name.first_name,
    middle_name: Faker::Name.middle_name,
    last_name: Faker::Name.last_name,
    birthdate: Faker::Date.birthday(min_age: 1, max_age: 35),
    user_id: rand(1..10)
  )
end

50.times do
  PersonalProperty.create(
    description: Faker::Commerce.product_name,
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state,
    zip: Faker::Address.zip,
    user_id: rand(1..10)
  )
end

20.times do
  RealProperty.create(
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state,
    zip: Faker::Address.zip,
    user_id: rand(1..10)
  )
end

Spouse.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, user_id: 1).save
Spouse.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, user_id: 2).save
Spouse.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, user_id: 3).save
Spouse.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, user_id: 4).save
Spouse.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, user_id: 5).save
Spouse.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, user_id: 6).save
Spouse.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, user_id: 7).save
Spouse.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, user_id: 8).save
Spouse.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, user_id: 9).save
Spouse.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, user_id: 10).save
