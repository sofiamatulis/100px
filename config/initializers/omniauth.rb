Rails.application.config.middleware.use OmniAuth::Builder do
     provider :fiveHundredPx, ENV["CONSUMER_KEY"], ENV["CONSUMER_SECRET"]
 end


# provider :fiveHundredPx, Rails.application.secrets.consumer_key, Rails.application.secrets.consumer_secret

# consumer key and secret with omniauth gem .
#this is so i can be authenticated through my 500px  and access the info! (the values are in the secrets files)
