json.extract! connector, :id, :title, :adapter, :database, :username, :password, :host, :port, :created_at, :updated_at
json.url connector_url(connector, format: :json)
