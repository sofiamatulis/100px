require 'rails_helper'

RSpec.describe PhotosController do

  describe "index is here" do
    it "should be successful with index showing" do
      get :index
      expect(response).to be_success
    end
  end

end
