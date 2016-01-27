json.array!(@typeofpets) do |typeofpet|
  json.extract! typeofpet, :id, :name, :pet_id
  json.url typeofpet_url(typeofpet, format: :json)
end
