require "rails_helper"

RSpec.describe CommentsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/guest_book").to route_to("comments#index")
    end

    it "routes to #create" do
      expect(:post => "/guest_book").to route_to("comments#create")
    end

    it "routes to #destroy" do
      expect(:delete => "/guest_book/1").to route_to("comments#destroy", :id => "1")
    end

  end
end
