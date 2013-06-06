require 'machinist/active_record'

# Add your blueprints here.
#
# e.g.
#   Post.blueprint do
#     title { "Post #{sn}" }
#     body  { "Lorem ipsum..." }
#   end

Petition.blueprint do
  title { Faker::Lorem.sentence }
  image { File.open("#{Rails.root}/features/support/people.jpeg") }
end

Post.blueprint do
  image { File.open("#{Rails.root}/features/support/nature.jpeg") }
  title { Faker::Lorem.sentence }
  user  { User.make! }
  body  { Faker::Lorem.paragraph(3) }
end

User.blueprint do
  first_name  { Faker::Name.first_name }
  last_name   { Faker::Name.last_name }
  image       { File.open("#{Rails.root}/features/support/cat.jpeg") }
  email       { Faker::Internet.email }
end

Follow.blueprint do
  follower { User.make! }
  followed { User.make! }
end

Signature.blueprint do
  petition  { Petition.make! }
  user      { User.make! }
end
