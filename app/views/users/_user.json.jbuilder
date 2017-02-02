json.extract! user, :id, :login, :admin_id, :student_id, :created_at, :updated_at
json.url user_url(user, format: :json)