require "rails_helper"

RSpec.describe SlowlogextsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/slowlogexts").to route_to("slowlogexts#index")
    end

    it "routes to #new" do
      expect(:get => "/slowlogexts/new").to route_to("slowlogexts#new")
    end

    it "routes to #show" do
      expect(:get => "/slowlogexts/1").to route_to("slowlogexts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/slowlogexts/1/edit").to route_to("slowlogexts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/slowlogexts").to route_to("slowlogexts#create")
    end

    it "routes to #update" do
      expect(:put => "/slowlogexts/1").to route_to("slowlogexts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/slowlogexts/1").to route_to("slowlogexts#destroy", :id => "1")
    end

  end
end
