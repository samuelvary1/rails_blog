json.array!(@image_uploaders) do |image_uploader|
  json.extract! image_uploader, :id, :title, :description, :image
  json.url image_uploader_url(image_uploader, format: :json)
end
