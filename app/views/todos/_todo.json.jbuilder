json.extract! todo, :id, :title, :content, :position, :created_at, :updated_at
json.url todo_url(todo, format: :json)
