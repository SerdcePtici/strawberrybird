require "rails_helper"

RSpec.describe CommentsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/guest_book").to route_to("comments#index")
    end

    it "routes to #new" do
      expect(:get => "/guest_book/new").to route_to("comments#new")
    end

    it "routes to #show" do
      expect(:get => "/guest_book/1").to route_to("comments#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/guest_book/1/edit").to route_to("comments#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/guest_book").to route_to("comments#create")
    end

    it "routes to #update" do
      expect(:put => "/guest_book/1").to route_to("comments#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/guest_book/1").to route_to("comments#destroy", :id => "1")
    end

  end
end
