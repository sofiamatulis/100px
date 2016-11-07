F00px.configure do |config|
  config.consumer_key =  Rails.application.secrets.consumer_key
  config.consumer_secret = Rails.application.secrets.consumer_secret

end
