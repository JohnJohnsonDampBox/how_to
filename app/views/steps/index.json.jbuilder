json.array!(@steps) do |step|
  json.extract! step, :id, :step_number, :description
  json.url step_url(step, format: :json)
end
