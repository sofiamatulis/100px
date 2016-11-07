class PhotosController < ApplicationController
  def index
    #this is retrieving the photos with the gem F00px that was configured in the F00px.rb file in the initializer folder
  client = F00px::Client.new
  #retrieving the photos that are popular and number of photos is equal to 100
  response = client.get('photos?rpp=100&feature=popular')
  @pictures  = JSON.parse(response.body)['photos']

      #retrieving the photos from the response in JSON and saving in a variable pictures that is used in the html file
      #extracting the photos data from the json response , instead of all the information
  end
end
