require "rails_helper"

RSpec.describe ServerpvsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/serverpvs").to route_to("serverpvs#index")
    end

    it "routes to #new" do
      expect(:get => "/serverpvs/new").to route_to("serverpvs#new")
    end

    it "routes to #show" do
      expect(:get => "/serverpvs/1").to route_to("serverpvs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/serverpvs/1/edit").to route_to("serverpvs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/serverpvs").to route_to("serverpvs#create")
    end

    it "routes to #update" do
      expect(:put => "/serverpvs/1").to route_to("serverpvs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/serverpvs/1").to route_to("serverpvs#destroy", :id => "1")
    end

  end
end
