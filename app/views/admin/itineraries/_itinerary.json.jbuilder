json.extract! itinerary, :id, :title, :place, :value, :discount, :discount_date, :description, :image, :created_at, :updated_at
json.url itinerary_url(itinerary, format: :json)
