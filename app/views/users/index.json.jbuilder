json.array!(@users) do |user|
  json.extract! user, :id, :id, :email, :username, :password, :password_digest, :location, :image, :bio
  json.url user_url(user, format: :json)
end
