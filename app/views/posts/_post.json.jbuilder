json.extract! post, :id, :title, :description, :kind, :author, :created_at, :updated_at
json.url post_url(post, format: :json)
