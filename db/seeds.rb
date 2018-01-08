user = User.create!(
    email: 'test@test.test',
    password: 'password'
)

10.times do
    Item.create!(
        user: user,
        name: Faker::Lorem.sentence
    )
end

puts "Seed finished"
puts "#{Item.count} items created"
puts "#{User.count} users created"
