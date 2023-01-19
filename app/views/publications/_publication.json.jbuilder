json.extract! publication, :id, :title, :content, :files, :created_at, :updated_at
json.url publication_url(publication, format: :json)
json.files do
  json.array!(publication.files) do |file|
    json.id file.id
    json.url url_for(file)
  end
end
