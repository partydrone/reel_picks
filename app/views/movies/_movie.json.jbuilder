json.extract! movie, :id, :title, :released_on, :trailer, :link, :earnings, :created_at, :updated_at
json.url movie_url(movie, format: :json)
