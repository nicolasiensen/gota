def route_to_path route
  return root_path                  if route == "the homepage"
  return new_user_registration_path if route == "the sign up page"
  return user_path(current_user)   if route == "my profile page"
  raise "I don't know what '#{route}' means. You can add this route to features/support/helpers.rb"
end

def current_user
  User.find_by_email("nicolas@umagotanooceano.org")
end
