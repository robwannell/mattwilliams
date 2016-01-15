json.array!(@endorsements) do |endorsement|
  json.extract! endorsement, :id, :firstname, :lastname, :category, :ranking, :title, :organization
  json.url endorsement_url(endorsement, format: :json)
end
