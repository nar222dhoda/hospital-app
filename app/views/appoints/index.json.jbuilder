json.array!(@appoints) do |appoint|
  json.extract! appoint, :id, :reminder, :reason, :past_visit, :custm_id, :doctor_id, :pet_id
  json.url appoint_url(appoint, format: :json)
end
