require "rails_helper"

RSpec.describe CorretoresController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/corretores").to route_to("corretores#index")
    end

    it "routes to #new" do
      expect(:get => "/corretores/new").to route_to("corretores#new")
    end

    it "routes to #show" do
      expect(:get => "/corretores/1").to route_to("corretores#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/corretores/1/edit").to route_to("corretores#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/corretores").to route_to("corretores#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/corretores/1").to route_to("corretores#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/corretores/1").to route_to("corretores#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/corretores/1").to route_to("corretores#destroy", :id => "1")
    end
  end
end
