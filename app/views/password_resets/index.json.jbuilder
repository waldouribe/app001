json.array!(@password_resets) do |password_reset|
  json.extract! password_reset, :id, :user_id, :token, :datetime, :used
  json.url password_reset_url(password_reset, format: :json)
end
