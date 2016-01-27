json.array!(@custms) do |custm|
  json.extract! custm, :id, :name, :pets_name, :next_appointment, :reason
  json.url custm_url(custm, format: :json)
end
