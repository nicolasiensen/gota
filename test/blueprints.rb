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
