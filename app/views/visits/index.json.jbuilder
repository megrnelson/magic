json.array!(@visits) do |visit|
  json.extract! visit, :id, :venue_id, :dog_id, :starts_at, :ends_at, :status
  json.url visit_url(visit, format: :json)
end
