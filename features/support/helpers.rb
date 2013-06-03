def route_to_path route
  return root_path if route == "the homepage"
  raise "I don't know what '#{route}' means. You can add this route to features/support/helpers.rb"
end
