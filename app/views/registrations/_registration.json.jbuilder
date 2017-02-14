json.extract! registration, :id, :name, :email, :number, :college, :created_at, :updated_at
json.url registration_url(registration, format: :json)