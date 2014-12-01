require 'rails_helper'

RSpec.describe SubcategoryController, :type => :controller do

  describe "GET 'category:references'" do
    it "returns http success" do
      get 'category:references'
      expect(response).to be_success
    end
  end

  describe "GET 'name:string'" do
    it "returns http success" do
      get 'name:string'
      expect(response).to be_success
    end
  end

end
