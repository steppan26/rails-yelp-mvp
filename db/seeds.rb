require 'faker'

puts 'Seeding started...'

restaurants = Restaurant.all

restaurants.each do |restaurant|
  puts "creating a review for #{restaurant.name}"
  times_looped = rand(2..5)
  times_looped.times do
    new_review = { rating: rand(0..5), content: Faker::Restaurant.review, restaurant: restaurant }
    Review.create!(new_review)
  end
end

puts 'Seeding done!'
