json.array!(@hubabas) do |hubaba|
  json.extract! hubaba, :name, :man
  json.url hubaba_url(hubaba, format: :json)
end