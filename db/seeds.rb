# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Post.destroy_all

20.times do
  u = User.create :email => Faker::Internet.email, :username => Faker::Name.first_name, :password => "pasword99", :password_confirmation => "pasword99", :location => Faker::Address.city, :image => Faker::Avatar.image("90x190"), :bio => Faker::Company.catch_phrase, :website => Faker::Internet.domain_name

  10.times do
    p = Post.create :content => Faker::Hacker.say_something_smart
    u.posts << p
  end
end