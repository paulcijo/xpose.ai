json.extract! campaign, :id, :address, :location, :keywords, :created_at, :updated_at
json.url campaign_url(campaign, format: :json)