require "rails_helper"

RSpec.describe ProsesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/proses").to route_to("proses#index")
    end

    it "routes to #new" do
      expect(:get => "/proses/new").to route_to("proses#new")
    end

    it "routes to #show" do
      expect(:get => "/proses/1").to route_to("proses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/proses/1/edit").to route_to("proses#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/proses").to route_to("proses#create")
    end

    it "routes to #update" do
      expect(:put => "/proses/1").to route_to("proses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/proses/1").to route_to("proses#destroy", :id => "1")
    end

  end
end
