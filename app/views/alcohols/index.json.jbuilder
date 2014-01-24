json.array!(@alcohols) do |alcohol|
  json.extract! alcohol, :id, :name, :decsription, :ingredients
  json.url alcohol_url(alcohol, format: :json)
end
