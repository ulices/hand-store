require 'spec_helper'

describe HandStoreController do
  describe "Get 'index'" do
    it 'should be success' do
      get :index
      response.should be_success
    end
  end
end
