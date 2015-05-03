json.array!(@shoes) do |shoe|
  json.extract! shoe, :id, :name, :description, :cover, :price
  json.url shoe_url(shoe, format: :json)
end
