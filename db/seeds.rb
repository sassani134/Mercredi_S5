# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require'faker'

10.times do |index|
User.create(user: "sam#{index}", password: "azerty#{index}")
end


30.times do |index|

Gossip.create(title: "titre#{index}", author: Faker::Name.first_name, content: Faker::Lorem.sentence, user_id:rand(User.first.id..User.last.id))

end

10.times do |index|
	Tag.create(tag: "tag#{index}", gossip_id: rand(Gossip.first.id..Gossip.last.id))
end

10.times do
	Like.create(gossip_id: rand(Gossip.first.id..Gossip.last.id))
end

10.times do |index|
	Comment.create(content:"content#{index}" ,user_id:rand(User.first.id..User.last.id),gossip_id: rand(Gossip.first.id..Gossip.last.id))
end