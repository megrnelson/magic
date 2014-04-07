json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :email, :password, :address1, :address2, :city, :state, :zip, :insurance, :membership, :role
  json.url user_url(user, format: :json)
end
