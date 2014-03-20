json.array!(@my_applications) do |my_application|
  json.extract! my_application, :id, :name, :path, :git, :development, :test, :authentication, :authorization, :states, :state, :bundle, :bundle_path
  json.url my_application_url(my_application, format: :json)
end
