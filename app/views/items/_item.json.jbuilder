json.extract! item, :id, :name, :description, :category_id, :price, :shipping_id, :quantity, :user_id, :created_at, :updated_at
json.url item_url(item, format: :json)
