json.array!(@hobbies) do |hobby|
  json.extract! hobby, :name, :hobby
  json.url hobby_url(hobby, format: :json)
end