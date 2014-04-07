json.array!(@venues) do |venue|
  json.extract! venue, :id, :name, :address1, :address2, :city, :state
  json.url venue_url(venue, format: :json)
end
