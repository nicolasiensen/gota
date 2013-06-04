require 'machinist/active_record'
require 'open-uri'

# Add your blueprints here.
#
# e.g.
#   Post.blueprint do
#     title { "Post #{sn}" }
#     body  { "Lorem ipsum..." }
#   end

Petition.blueprint do
  title  { Faker::Lorem.sentence }
  remote_image_url { "http://lorempixel.com/1024/765/people/#{sn.to_i}/" }
end

Post.blueprint do
  remote_image_url  { "http://lorempixel.com/1024/765/animals/#{sn.to_i}/" }
  title             { Faker::Lorem.sentence }
  user              { User.make! }
  body              { Faker::Lorem.paragraph(3) }
end

User.blueprint do
  first_name        { Faker::Name.first_name }
  last_name         { Faker::Name.last_name }
  remote_image_url  { "http://lorempixel.com/1024/765/cats/#{sn.to_i}/" }
end
