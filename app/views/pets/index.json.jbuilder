json.array!(@pets) do |pet|
  json.extract! pet, :id, :pets_name, :age, :breed, :weight, :last_visit, :cust_id
  json.url pet_url(pet, format: :json)
end
