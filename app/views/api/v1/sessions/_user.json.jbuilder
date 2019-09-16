json.extract! user, :email, :token, :name
json.url user_url(user, format: :json)
