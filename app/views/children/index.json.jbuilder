json.array!(@children) do |child|
  json.extract! child, :name, :school, :address, :gender
  json.url child_url(child, format: :json)
end