json.extract! item, :id, :name, :description, :category, :price, :shipping, :quantity, :user_id, :created_at, :updated_at
json.url item_url(item, format: :json)
