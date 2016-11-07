F00px.configure do |config|
  config.consumer_key =  Rails.application.secrets.consumer_key
  config.consumer_secret = Rails.application.secrets.consumer_secret

end


# this is part of the gem F00px
#https://github.com/500px/f00px
# it was created by 500px to ease the use of the API

#here I am assigning the consumer key and secret to be grabbed from the secrets file  
