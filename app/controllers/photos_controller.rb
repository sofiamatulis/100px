class PhotosController < ApplicationController
  def index
  client = F00px::Client.new
  response = client.get('photos?rpp=100&feature=popular')
  @pictures  = JSON.parse(response.body)['photos']

      #retrieving the photos from the response in JSON
      #extracting the photos data
  end
end
