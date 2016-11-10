Rails.application.config.middleware.use OmniAuth::Builder do
    # provider :fiveHundredPx, Rails.application.secrets.consumer_key, Rails.application.secrets.consumer_secret



    provider :fiveHundredPx,ENV["consumer_key"], ENV["consumer_secret"]

end




# consumer key and secret with omniauth gem .
#this is so i can be authenticated through my 500px  and access the info! (the values are in the secrets files)
