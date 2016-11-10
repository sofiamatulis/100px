class PhotosController < ApplicationController
  before_action :current_client

  def index
    response = @client.get('photos?rpp=100&feature=popular')
    @pictures  = JSON.parse(response.body)['photos']
  end
    #this is retrieving the photos with the gem F00px that was configured in the F00px.rb file in the initializer folder
  #client = F00px::Client.new
  #retrieving the photos that are popular and number of photos is equal to 100
  #retrieving the photos from the response in JSON and saving in a variable pictures that is used in the html file
  #extracting the photos data from the json response , instead of all the information


  def like
    @picture   = params[:picture]
    @client.post("photos/#{@picture}/vote?vote=1")
    redirect_to root_path
  end


  # params of the picture is what is inside of the photo (information gotten from the URL)
  #post a vote (like) in the picture
  # https://github.com/500px/api-documentation/blob/master/endpoints/photo/POST_photos_id_vote.md
  # vote docs gotten from here



  private
  def current_client
    @client = F00px::Client.new
    if session[:token_secret] && session[:token]
    @client.token           = session[:token]
    @client.token_secret    = session[:token_secret]
    end
  end
  #using F00px gem
  #if the user is logged in, the token from the 500px account is the token for this session (they are the same and I can like it from my 500px account)


end
