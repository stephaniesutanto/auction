json.extract! product, :id, :title, :lister, :description, :bid, :bidder, :deadline, :created_at, :updated_at
json.url product_url(product, format: :json)