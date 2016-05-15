json.array!(@surveys) do |survey|
  json.extract! survey, :id, :name, :description, :source
  json.url survey_url(survey, format: :json)
end
