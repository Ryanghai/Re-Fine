json.extract! user, :id, :name, :user_name, :introduce, :email, :crypted_password, :created_at, :updated_at
json.url user_url(user, format: :json)
