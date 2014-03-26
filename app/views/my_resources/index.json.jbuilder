json.array!(@my_resources) do |my_resource|
  json.extract! my_resource, :id, :name, :fields, :my_application_id
  json.url my_resource_url(my_resource, format: :json)
end
