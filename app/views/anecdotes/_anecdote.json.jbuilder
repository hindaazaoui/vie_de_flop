json.extract! anecdote, :id, :title, :content, :user_id, :created_at, :updated_at
json.url anecdote_url(anecdote, format: :json)
