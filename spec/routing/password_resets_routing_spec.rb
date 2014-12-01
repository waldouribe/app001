require "rails_helper"

RSpec.describe PasswordResetsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/password_resets").to route_to("password_resets#index")
    end

    it "routes to #new" do
      expect(:get => "/password_resets/new").to route_to("password_resets#new")
    end

    it "routes to #show" do
      expect(:get => "/password_resets/1").to route_to("password_resets#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/password_resets/1/edit").to route_to("password_resets#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/password_resets").to route_to("password_resets#create")
    end

    it "routes to #update" do
      expect(:put => "/password_resets/1").to route_to("password_resets#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/password_resets/1").to route_to("password_resets#destroy", :id => "1")
    end

  end
end
