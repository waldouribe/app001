json.array!(@evaluations) do |evaluation|
  json.extract! evaluation, :id, :experience_id, :user_id, :grade
  json.url evaluation_url(evaluation, format: :json)
end
