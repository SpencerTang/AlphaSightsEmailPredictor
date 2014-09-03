json.array!(@advisors) do |advisor|
  json.extract! advisor, :id, :domain_name, :first_name, :last_name
  json.url advisor_url(advisor, format: :json)
end
