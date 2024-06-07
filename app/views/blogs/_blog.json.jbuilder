json.extract! blog, :id, :title, :minute, :desc, :image, :content, :created_at, :updated_at
json.url blog_url(blog, format: :json)
