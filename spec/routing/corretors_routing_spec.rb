require "rails_helper"

RSpec.describe CorretorsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/corretors").to route_to("corretors#index")
    end

    it "routes to #new" do
      expect(:get => "/corretors/new").to route_to("corretors#new")
    end

    it "routes to #show" do
      expect(:get => "/corretors/1").to route_to("corretors#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/corretors/1/edit").to route_to("corretors#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/corretors").to route_to("corretors#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/corretors/1").to route_to("corretors#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/corretors/1").to route_to("corretors#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/corretors/1").to route_to("corretors#destroy", :id => "1")
    end
  end
end
