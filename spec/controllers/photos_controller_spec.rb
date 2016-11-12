require 'rails_helper'

RSpec.describe PhotosController do

  describe "index is here" do
    it "should be successful with index showing" do
      get :index
      expect(response).to be_success
    end
  end


  describe "photos is liking " do
    it "should be successful with like working" do
      post :index, method: :like, params: {id: '123456'}
      expect(response).to have_http_status(200)
    end
  end

end
