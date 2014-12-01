json.array!(@experiences) do |experience|
  json.extract! experience, :id, :title, :description, :javascript, :subcategory_id
  json.url experience_url(experience, format: :json)
end
