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

  describe "fresh is here" do
    it "should be successful with index showing" do
      get :fresh
      expect(response).to be_success
    end
  end

  describe "upcoming is here" do
    it "should be successful with index showing" do
      get :upcoming
      expect(response).to be_success
    end
  end

  describe "editors is here" do
    it "should be successful with index showing" do
      get :editors
      expect(response).to be_success
    end
  end

#testing if it finds title from index page
  render_views
  describe "GET index" do
    it "has a photos related heading" do
      get :index
      expect(response.body).to match /<h1 id="main-page-title"> Latest 100 photos from 500px/
    end
  end

end
