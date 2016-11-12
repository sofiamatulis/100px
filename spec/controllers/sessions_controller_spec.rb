require 'rails_helper'

OmniAuth.config.test_mode = true

# before do
#   Rails.application.env_config["omniauth.auth"] = OmniAuth.config.mock_auth[:F00px]
# end

OmniAuth.config.mock_auth[:F00px] = OmniAuth::AuthHash.new({
  :provider => '500px',
  :uid => '123545',
  :name => 'Maria',
  :token => 'dklamdkmq',
  :secret => 'dkndnendew'
})



RSpec.describe SessionsController do

  describe "guest access" do
      describe 'GET #create' do
      it "requires login" do
      get :create, params: {provider: '500px'}
      #redirecting to 500px log-in
      expect(response).to have_http_status(302)
      end
    end
  end

  describe "guest access" do
      describe 'GET #destroy' do
      it "log out from app" do
      get :destroy, params: {provider: '500px'}
      #redirecting to 500px log-out
      expect(response).to have_http_status(302)
      end
    end
  end


end
