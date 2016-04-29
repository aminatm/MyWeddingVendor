json.array!(@listings) do |listing|
  json.extract! listing, :id, :name, :description, :category, :user_id
  json.url listing_url(listing, format: :json)
end
