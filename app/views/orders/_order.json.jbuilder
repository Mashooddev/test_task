json.extract! order, :id, :customer_id, :placed_at, :processed_by, :processed_at, :expected_delivery_date, :actual_delivery_date, :sub_total, :discount, :tax, :total_amount, :created_at, :updated_at
json.url order_url(order, format: :json)
