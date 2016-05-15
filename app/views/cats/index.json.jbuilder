json.array!(@cats) do |cat|
  json.extract! cat, :id, :before_street, :before_city, :before_state, :before_zip, :before_type, :after_street, :after_city, :after_state, :after_zip, :after_type, :location_prompting_visit, :amount_spent_today
  json.url cat_url(cat, format: :json)
end
