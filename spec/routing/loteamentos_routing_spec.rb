require "rails_helper"

RSpec.describe LoteamentosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/loteamentos").to route_to("loteamentos#index")
    end

    it "routes to #new" do
      expect(:get => "/loteamentos/new").to route_to("loteamentos#new")
    end

    it "routes to #show" do
      expect(:get => "/loteamentos/1").to route_to("loteamentos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/loteamentos/1/edit").to route_to("loteamentos#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/loteamentos").to route_to("loteamentos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/loteamentos/1").to route_to("loteamentos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/loteamentos/1").to route_to("loteamentos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/loteamentos/1").to route_to("loteamentos#destroy", :id => "1")
    end
  end
end
