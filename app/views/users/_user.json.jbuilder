json.extract! user, :id, :email, :password, :full_name, :location, :bio, :created_at, :updated_at
json.url user_url(user, format: :json)
